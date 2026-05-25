#@> Executed from:
#@>   function hygrave:internal/grave/generate/cancel
#@>   function hygrave:internal/grave/generate/cancel/drop_items

## Spawn item
execute as @p[tag=hygrave.temp.grave.owner] at @s anchored eyes run summon minecraft:item ^ ^ ^ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}},Tags:["hygrave.temp.grave.item_to_drop","hygrave.grave.item"],Age:-32768s}

## Set item
data modify entity @n[tag=hygrave.temp.grave.item_to_drop] Item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## Apply item configs to the item

##> Dropped Contents / Item Despawn Time
scoreboard players operation @n[tag=hygrave.temp.grave.item_to_drop] hygrave.despawn_time = (dropped_contents/item_despawn_time) hygrave.config

##> Dropped Contents / Invulnerable Items
execute if score (dropped_contents/invulnerable_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_drop] Invulnerable set value 1b

##> Dropped Contents / No Gravity Items
execute if score (dropped_contents/no_gravity_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_drop] NoGravity set value 1b

##> Graves / Item Distribution / Grave Generation Fail / Naturalize Drop Acceleration
execute if score (graves/item_distribution/grave_generation_fail/naturalize_drop_acceleration) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.item_to_drop] at @s run function hygrave:internal/helper/give_random_motion

## Remove item from grave
data remove entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## If failed to set item, get rid of the item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=hygrave.temp.grave.item_to_drop] remove hygrave.temp.grave.item_to_drop


## Do all of above for the rest of items of the grave
execute if data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/generate/cancel/drop_items
