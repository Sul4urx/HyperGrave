#@> Executed from:
#@>   function hygrave:internal/loop/1t

## Store grave data in a storage for performance
data modify storage hygrave:common temp.grave_data set from entity @s item.components.minecraft:custom_data.hygrave:common

## Check if the grave is marked active
## If not, delete the grave
## This allows for deleting the grave entity remotely
scoreboard players set .grave_is_active hygrave.temp_var 0
execute store result score .grave_is_active hygrave.temp_var run function hygrave:internal/grave/grave_is_active with storage hygrave:common temp.grave_data

execute if score .grave_is_active hygrave.temp_var matches 0 run return run function hygrave:internal/grave/remove_grave_entity

## Add temp tags
tag @s add hygrave.temp.grave.base
execute on passengers at @s if entity @s[tag=hygrave.grave.interaction] run tag @s add hygrave.temp.grave.interaction
execute on passengers at @s if entity @s[tag=hygrave.grave.player_head] run tag @s add hygrave.temp.grave.player_head
execute on passengers at @s if entity @s[tag=hygrave.grave.model.decoration_1] run tag @s add hygrave.temp.grave.model.decoration_1
execute on passengers at @s if entity @s[tag=hygrave.grave.model.decoration_2] run tag @s add hygrave.temp.grave.model.decoration_2
execute on passengers at @s if entity @s[tag=hygrave.grave.text_display] run tag @s add hygrave.temp.grave.text_display
execute on passengers at @s if entity @s[tag=hygrave.grave.icd] run tag @s add hygrave.temp.grave.icd
execute as @n[type=minecraft:interaction,distance=..1,tag=hygrave.temp.grave.interaction] at @s on target at @s run tag @s add hygrave.temp.grave.interactor
execute as @n[type=minecraft:interaction,distance=..1,tag=hygrave.temp.grave.interaction] at @s on attacker at @s run tag @s add hygrave.temp.grave.interactor
function hygrave:internal/grave/tag_owner with storage hygrave:common temp.grave_data.owner

## Update text display
scoreboard players add @s[tag=hygrave.temp.grave.base] hygrave.text_display_update_cooldown 1

execute if score @s hygrave.text_display_update_cooldown matches 20.. if score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 0 run function hygrave:internal/grave/update_text_display/update
execute unless score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 0 unless data storage hygrave:common temp.grave_data{icd_activated:1b} run function hygrave:internal/grave/update_text_display/update
execute unless score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 0 if data storage hygrave:common temp.grave_data{icd_activated:1b} run function hygrave:internal/grave/update_text_display/update_icd

execute if score @s[tag=hygrave.temp.grave.base] hygrave.text_display_update_cooldown matches 20.. run scoreboard players set @s hygrave.text_display_update_cooldown 0

## Tag the ICD activator
execute if score (grave_interaction/icd_properties/activate_for) hygrave.config matches 1 if score (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config matches 0 run tag @a[distance=..4,predicate=hygrave:is_sneaking,tag=hygrave.temp.grave.owner] add hygrave.temp.grave.icd_activator
execute if score (grave_interaction/icd_properties/activate_for) hygrave.config matches 2 if score (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config matches 0 run tag @a[distance=..4,predicate=hygrave:is_sneaking] add hygrave.temp.grave.icd_activator

execute if score (grave_interaction/icd_properties/activate_for) hygrave.config matches 1 if score (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config matches 1 run tag @a[distance=..4,predicate=!hygrave:is_sneaking,tag=hygrave.temp.grave.owner] add hygrave.temp.grave.icd_activator
execute if score (grave_interaction/icd_properties/activate_for) hygrave.config matches 2 if score (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config matches 1 run tag @a[distance=..4,predicate=!hygrave:is_sneaking] add hygrave.temp.grave.icd_activator

## ICD management
execute unless data entity @n[type=minecraft:item_display,distance=..1,tag=hygrave.temp.grave.icd] {view_range:0.0f} run function hygrave:internal/grave/icd/display
execute if entity @p[distance=..4,tag=hygrave.temp.grave.icd_activator] if data storage hygrave:common temp.grave_data.items[0] run data modify storage hygrave:common temp.grave_data.icd_activated set value 1b
execute unless entity @p[distance=..4,tag=hygrave.temp.grave.icd_activator] run data modify storage hygrave:common temp.grave_data.icd_activated set value 0b
execute unless data storage hygrave:common temp.grave_data.items[0] run data modify storage hygrave:common temp.grave_data.icd_activated set value 0b

## Stylize grave
execute if data storage hygrave:common temp.grave_data{icd_activated:1b} run function hygrave:internal/grave/icd/model
execute unless data storage hygrave:common temp.grave_data{icd_activated:1b} run function hygrave:internal/grave/model

## Dump grave data
data modify entity @s item.components.minecraft:custom_data.hygrave:common set from storage hygrave:common temp.grave_data

## If player both interacted and attacked grave, prioritize interaction
execute as @n[type=minecraft:interaction,distance=..1,tag=hygrave.temp.grave.interaction] at @s if data entity @s interaction run data remove entity @s attack

## On player interaction with grave
execute if data entity @n[type=minecraft:interaction,distance=..1,tag=hygrave.temp.grave.interaction] interaction run function hygrave:internal/event/player/player_interacted_with_grave

## On player attack on grave
execute if data entity @n[type=minecraft:interaction,distance=..1,tag=hygrave.temp.grave.interaction] attack run function hygrave:internal/event/player/player_attacked_grave

## In case grave has not been destroyed after 
## being interacted or attacked by player,
## Remove interaction and attack tags to prevent loop
data remove entity @n[type=minecraft:interaction,distance=..1,tag=hygrave.grave.interaction] interaction
data remove entity @n[type=minecraft:interaction,distance=..1,tag=hygrave.grave.interaction] attack

## Remove temp tags
tag @e[distance=..1,tag=hygrave.temp.grave.base] remove hygrave.temp.grave.base
tag @e[tag=hygrave.temp.grave.owner] remove hygrave.temp.grave.owner
tag @e[distance=..1,tag=hygrave.temp.grave.player_head] remove hygrave.temp.grave.player_head
tag @e[distance=..1,tag=hygrave.temp.grave.text_display] remove hygrave.temp.grave.text_display
tag @e[distance=..1,tag=hygrave.temp.grave.model.decoration_1] remove hygrave.temp.grave.model.decoration_1
tag @e[distance=..1,tag=hygrave.temp.grave.model.decoration_2] remove hygrave.temp.grave.model.decoration_2
tag @e[distance=..1,tag=hygrave.temp.grave.icd] remove hygrave.temp.grave.icd
tag @e[distance=..1,tag=hygrave.temp.grave.interaction] remove hygrave.temp.grave.interaction
tag @e[tag=hygrave.temp.grave.interactor] remove hygrave.temp.grave.interactor
tag @e[tag=hygrave.temp.grave.icd_activator] remove hygrave.temp.grave.icd_activator
