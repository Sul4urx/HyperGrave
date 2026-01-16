#<< grave/generate/copy_items

# Loop through all items stored in the grave
# and if any of the items match the item predicates 
# in the config Graves / Item Distribution / Grave Generation Success / Remove,
# remove the item from grave so that it doesn't get taken

## Manipulate current item
data modify storage hygrave:common temp.item set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]
data remove storage hygrave:common temp.item.Slot
data modify entity @s Item set from storage hygrave:common temp.item

## Check if item should be removed
execute store result storage hygrave:common temp.args.slot int 1 run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1].Slot
execute store result score .slot_operation hygrave.temp_var run function hygrave:internal/macro/config/graves/slot_distribution/get_slot_operation with storage hygrave:common temp.args

scoreboard players set .remove_item hygrave.temp_var 0

##> See the function that returned to .slot_operation for more info on what it returned
execute if score .slot_operation hygrave.temp_var matches 18 run scoreboard players set .remove_item hygrave.temp_var 1

execute unless score .slot_operation hygrave.temp_var matches 1.. run function hygrave:internal/grave/generate/distribute_items/remove/check_item_predicates with storage hygrave:common configs.value.graves.item_distribution.grave_generation_success

scoreboard players set .slot_operation hygrave.temp_var 0

## .remove_item = 1 ⭢ Remove item in player's inventory
## .remove_item = 0 ⭢ Pass the item to the next operation
execute if score .remove_item hygrave.temp_var matches 1 run data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1].components.minecraft:custom_data.hygrave:common.delete_item set value 1b
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items prepend from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]

data remove entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]

## Remove 1 from iterator count
## If the iterator count is not 0,
## Check if next item should be removed
scoreboard players remove .loop_count hygrave.temp_var 1

data remove storage hygrave:common temp

execute if score .loop_count hygrave.temp_var matches 1.. if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/generate/distribute_items/remove with storage hygrave:common configs
