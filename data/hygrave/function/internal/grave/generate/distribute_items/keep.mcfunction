#<< grave/generate/copy_items

# Loop through all items stored in the grave
# and if any of the items match the item predicates 
# in the config Graves / Item Distribution / Grave Generation Success / Keep,
# remove the item from grave so that it doesn't get taken
# and give the item back to the player

## Manipulate current item
data modify storage hygrave:common temp.item set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]
data remove storage hygrave:common temp.item.Slot
data modify entity @s Item set from storage hygrave:common temp.item

## Check if item should be kept
execute store result storage hygrave:common temp.args.slot int 1 run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1].Slot
execute store result score .slot_operation hygrave.temp_var run function hygrave:internal/macro/config/graves/slot_distribution/get_slot_operation with storage hygrave:common temp.args

scoreboard players set .keep_item hygrave.temp_var 0

##> See the function that returned to .slot_operation for more info on what it returned
execute if score .slot_operation hygrave.temp_var matches 11 run scoreboard players set .keep_item hygrave.temp_var 1

execute unless score .slot_operation hygrave.temp_var matches 1.. run function hygrave:internal/grave/generate/distribute_items/keep/check_item_predicates with storage hygrave:common configs.value.graves.item_distribution.grave_generation_success

scoreboard players set .slot_operation hygrave.temp_var 0

## .keep_item = 1 ⭢ Keep item in player's inventory
## .keep_item = 0 ⭢ Pass the item to the next operation
execute unless score .keep_item hygrave.temp_var matches 1 run data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items prepend from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]

data remove entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[-1]

## Remove 1 from iterator count
## If the iterator count is not 0,
## Check if next item should be kept
scoreboard players remove .loop_count hygrave.temp_var 1

data remove storage hygrave:common temp

execute if score .loop_count hygrave.temp_var matches 1.. if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/generate/distribute_items/keep with storage hygrave:common configs
