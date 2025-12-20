#<< grave/unpack/give_items/main

# Summon items as entity (the items that have been queued to summon as entity instead)

## Summon item entity
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}},Tags:["hygrave.temp.grave.item_to_give_back","hygrave.grave.item"],Age:-32768s}

## Apply item configs to the item

##> Dropped Contents / Item Despawn time
scoreboard players operation @n[tag=hygrave.temp.grave.item_to_give_back] hygrave.despawn_time = (dropped_contents/item_despawn_time) hygrave.config

##> Dropped Contents / Invulnerable Items
execute if score (dropped_contents/invulnerable_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Invulnerable set value 1b

##> Dropped Contents / No Gravity Items
execute if score (dropped_contents/no_gravity_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] NoGravity set value 1b

## Set item content
data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Item set from storage hygrave:common temp.items_to_summon_as_entity[-1]

## Remove the item from items_to_summon_as_entity temp map
data remove storage hygrave:common temp.items_to_summon_as_entity[-1]

## If Set item content operation failed, get rid of the item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}]

## Remove temp tags
tag @e[tag=hygrave.temp.grave.item_to_give_back] remove hygrave.temp.grave.item_to_give_back

## Do all of the above for the next queued item to summon as entity
execute if data storage hygrave:common temp.items_to_summon_as_entity[0] run function hygrave:internal/grave/unpack/give_items/drop_rest_of_items
