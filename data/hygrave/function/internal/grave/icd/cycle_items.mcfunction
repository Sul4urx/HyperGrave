#<< grave/icd/display

## Move the first item of the list
## to the end of the list
data modify entity @s item.components.minecraft:custom_data.hygrave:common.items append from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

data remove entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## Reset cooldown
scoreboard players set @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 0