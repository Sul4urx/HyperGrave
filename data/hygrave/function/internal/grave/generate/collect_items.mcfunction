#<< grave/generate

$execute unless entity @p[tag=hygrave.temp.grave.owner,distance=..$(distance)] run return -1

## Add item to grave
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items append from entity @s Item

## Tag for later removal
tag @s[type=item] add hygrave.temp.item_to_be_deleted