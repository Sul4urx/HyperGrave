#<< grave/icd/check_conditions

## Set data
data modify entity @s item.components.minecraft:custom_data.hygrave:common.icd_activated set value 1b

## Show ICD
## If first tick of using this feature,
## Summon a new one and mount it to the grave
scoreboard players set .icd_exists hygrave.temp_var 0
execute on passengers if entity @s[tag=hygrave.grave.icd] run scoreboard players set .icd_exists hygrave.temp_var 1

execute unless score .icd_exists hygrave.temp_var matches 1 run summon minecraft:item_display ~ ~ ~ {Tags:["hygrave.grave.icd", "hygrave.temp.grave.icd"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [0.75f, 0.75f, 0.75f], translation: [0f, 0.5f, 0f]}, teleport_duration: 20, item_display: fixed}

execute if score .icd_exists hygrave.temp_var matches 1 on passengers if entity @s[tag=hygrave.grave.icd] run tag @s add hygrave.temp.grave.icd

ride @n[tag=hygrave.temp.grave.icd] mount @s

## If this line of code didn't exist,
## there would be a delay before the
## ICD starts rotating
execute unless score .icd_exists hygrave.temp_var matches 1 as @n[tag=hygrave.temp.grave.icd] at @s run function hygrave:internal/grave/rotate

## Render item
data modify entity @n[tag=hygrave.temp.grave.icd] item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## If grave has no items, deactivate the feature
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run return run function hygrave:internal/grave/icd/cancel

## Item cycle cooldown
scoreboard players add @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 1
execute if score @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown >= (graves/icd/item_cycle_cooldown) hygrave.config run function hygrave:internal/grave/icd/cycle_items

## Remove temp tag
tag @s remove hygrave.temp.grave.icd