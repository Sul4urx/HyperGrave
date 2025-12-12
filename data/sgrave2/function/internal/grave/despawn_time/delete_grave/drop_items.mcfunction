#<< grave/despawn_time/delete_grave

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}},Tags:["sgrave2.temp.grave.item_to_give_back","sgrave2.grave.item"],Age:-32768s}

## Set item
data modify entity @n[tag=sgrave2.temp.grave.item_to_give_back] Item set from entity @s item.components.minecraft:custom_data.sgrave2:common.items[0]

## Set despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.item_to_give_back] sgrave2.despawn_time = (dropped_contents/item_despawn_time) sgrave2.config

## Remove item from grave
data remove entity @s item.components.minecraft:custom_data.sgrave2:common.items[0]

## If failed to set item, get rid of the item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=sgrave2.temp.grave.item_to_give_back] remove sgrave2.temp.grave.item_to_give_back


## Do all of above for the rest of items of the grave
execute if data entity @s item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/despawn_time/delete_grave/drop_items
