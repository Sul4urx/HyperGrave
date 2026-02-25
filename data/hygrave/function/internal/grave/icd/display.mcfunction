#<< grave/main

## Item cycle cooldown
scoreboard players add @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 1
execute if score @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown >= (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config run function hygrave:internal/grave/icd/cycle_items

## Render item
data modify entity @n[tag=hygrave.temp.grave.icd] item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]