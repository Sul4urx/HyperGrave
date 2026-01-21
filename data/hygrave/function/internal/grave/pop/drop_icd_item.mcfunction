#<< grave/pop_icd_item

## Spawn item
summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:clock", components: {"minecraft:custom_data": {"hygrave:common": {temp_item: 1b}}}}, Tags: ["hygrave.temp.grave.item_to_give_back","hygrave.grave.item"],Age:-32768s}

## Set item
data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## Remove item from grave
data remove entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0]

## If failed to set item, get rid of the item
kill @e[nbt={Item: {components: {"minecraft:custom_data": {"hygrave:common": {temp_item: 1b}}}}}]

## Apply item configs to the item

##> Dropped Contents / Item Despawn time
scoreboard players operation @n[tag=hygrave.temp.grave.item_to_give_back] hygrave.despawn_time = (dropped_contents/item_despawn_time) hygrave.config

##> Dropped Contents / Invulnerable Items
execute if score (dropped_contents/invulnerable_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] Invulnerable set value 1b

##> Dropped Contents / No Gravity Items
execute if score (dropped_contents/no_gravity_items) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.item_to_give_back] NoGravity set value 1b

## Immediately switch to the next item
scoreboard players set @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 0

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1