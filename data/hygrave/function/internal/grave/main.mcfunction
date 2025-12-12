#<< loop/1t

## Check if the grave exists in data `active_graves` in storage `hygrave:common`
## If not, delete the grave
## This allows for deleting the grave entity remotely
scoreboard players set .grave_is_in_storage hygrave.temp_var 0
execute store result score .grave_is_in_storage hygrave.temp_var run function hygrave:internal/grave/check_if_grave_data_in_storage with entity @s item.components.minecraft:custom_data.hygrave:common

execute if score .grave_is_in_storage hygrave.temp_var matches 0 run return run function hygrave:internal/grave/delete

## Add temp tags
tag @s add hygrave.temp.grave.base
execute on passengers at @s if entity @s[tag=hygrave.grave.interaction] run tag @s add hygrave.temp.grave.interaction
execute on passengers at @s if entity @s[tag=hygrave.grave.player_head] run tag @s add hygrave.temp.grave.player_head
execute on passengers at @s if entity @s[tag=hygrave.grave.text_display] run tag @s add hygrave.temp.grave.text_display
execute on passengers at @s if entity @s[tag=hygrave.grave.icd] run tag @s add hygrave.temp.grave.icd
execute as @n[tag=hygrave.temp.grave.interaction] at @s on target at @s run tag @s add hygrave.temp.grave.interactor
execute as @n[tag=hygrave.temp.grave.interaction] at @s on attacker at @s run tag @s add hygrave.temp.grave.interactor
function hygrave:internal/grave/tag_owner with entity @s item.components.minecraft:custom_data.hygrave:common.owner

## Rotate player head and item in ICD
scoreboard players add @n[tag=hygrave.temp.grave.player_head] hygrave.rotation_cooldown 1
scoreboard players add @n[tag=hygrave.temp.grave.icd] hygrave.rotation_cooldown 1
execute as @n[tag=hygrave.grave.player_head] at @s if score @s hygrave.rotation_cooldown matches 20.. run function hygrave:internal/grave/rotate
execute as @n[tag=hygrave.grave.icd] at @s if score @s hygrave.rotation_cooldown matches 20.. run function hygrave:internal/grave/rotate

## Update text display
execute if score (graves/icd/switch_text_display) hygrave.config matches 0 run function hygrave:internal/grave/update_text_display/prepare
execute unless score (graves/icd/switch_text_display) hygrave.config matches 0 unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} run function hygrave:internal/grave/update_text_display/prepare
execute unless score (graves/icd/switch_text_display) hygrave.config matches 0 if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} run function hygrave:internal/grave/update_text_display/icd/prepare

## Tag the ICD (Item Cycle Display) activator
execute if score (graves/icd/activate_for) hygrave.config matches 1 if score (graves/icd/revert_sneaking_behavior) hygrave.config matches 0 run tag @a[distance=..4,predicate=hygrave:is_sneaking,tag=hygrave.temp.grave.owner] add hygrave.temp.grave.icd_activator
execute if score (graves/icd/activate_for) hygrave.config matches 2 if score (graves/icd/revert_sneaking_behavior) hygrave.config matches 0 run tag @a[distance=..4,predicate=hygrave:is_sneaking] add hygrave.temp.grave.icd_activator

execute if score (graves/icd/activate_for) hygrave.config matches 1 if score (graves/icd/revert_sneaking_behavior) hygrave.config matches 1 run tag @a[distance=..4,predicate=!hygrave:is_sneaking,tag=hygrave.temp.grave.owner] add hygrave.temp.grave.icd_activator
execute if score (graves/icd/activate_for) hygrave.config matches 2 if score (graves/icd/revert_sneaking_behavior) hygrave.config matches 1 run tag @a[distance=..4,predicate=!hygrave:is_sneaking] add hygrave.temp.grave.icd_activator

## ICD management
execute as @n[tag=hygrave.temp.grave.icd_activator] at @s run function hygrave:internal/grave/icd/check_conditions
execute unless entity @a[tag=hygrave.temp.grave.icd_activator] run function hygrave:internal/grave/icd/cancel
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} run data modify entity @n[tag=hygrave.temp.grave.player_head] view_range set value 0
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} run data modify entity @n[tag=hygrave.temp.grave.player_head] view_range set value 1

## If player both interacted and attacked grave, prioritize interaction
execute as @n[tag=hygrave.temp.grave.interaction] at @s if data entity @s interaction run data remove entity @s attack

## On player interaction with grave
execute if data entity @n[tag=hygrave.temp.grave.interaction] interaction run function hygrave:internal/event/player/player_interacted_with_grave

## On player attack on grave
execute if data entity @n[tag=hygrave.temp.grave.interaction] attack run function hygrave:internal/event/player/player_attacked_grave

## In case grave has not been destroyed after 
## being interacted or attacked by player,
## Remove interaction and attack tags to prevent loop
data remove entity @n[tag=hygrave.grave.interaction] interaction
data remove entity @n[tag=hygrave.grave.interaction] attack

## Remove temp tags
tag @e[tag=hygrave.temp.grave.base] remove hygrave.temp.grave.base
tag @e[tag=hygrave.temp.grave.owner] remove hygrave.temp.grave.owner
tag @e[tag=hygrave.temp.grave.player_head] remove hygrave.temp.grave.player_head
tag @e[tag=hygrave.temp.grave.text_display] remove hygrave.temp.grave.text_display
tag @e[tag=hygrave.temp.grave.icd] remove hygrave.temp.grave.icd
tag @e[tag=hygrave.temp.grave.interaction] remove hygrave.temp.grave.interaction
tag @e[tag=hygrave.temp.grave.interactor] remove hygrave.temp.grave.interactor
tag @e[tag=hygrave.temp.grave.icd_activator] remove hygrave.temp.grave.icd_activator
