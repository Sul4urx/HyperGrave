#<< grave/pop

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}},Tags:["hygrave.temp.grave.item_to_give_back","hygrave.grave.item"],Age:-32768s}

## Set item
data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## Apply item configs to the item

##> Dropped Contents / Item Despawn time
scoreboard players operation @n[tag=hygrave.temp.grave.item_to_give_back] hygrave.despawn_time = (dropped_contents/item_despawn_time) hygrave.config

##> Dropped Contents / Invulnerable Items
execute if score (dropped_contents/invulnerable_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Invulnerable set value 1b

##> Dropped Contents / No Gravity Items
execute if score (dropped_contents/no_gravity_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] NoGravity set value 1b

## Remove item from grave
data remove entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## If failed to set item, get rid of the item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=hygrave.temp.grave.item_to_give_back] remove hygrave.temp.grave.item_to_give_back


## Do all of above for the rest of items of the grave
execute if data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/pop/drop_items
