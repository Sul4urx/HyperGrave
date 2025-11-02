#<< grave/generate/copy_items

# Loop through all items stored in the grave
# and if any of the items match the item predicates 
# in the config Graves / Item Distribution / Grave Generation Success / Keep,
# remove the item from grave so that it doesn't get taken
# and give the item back to the player

## Manipulate current item
data modify storage sgrave2:common temp.item set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]
data remove storage sgrave2:common temp.item.Slot
data modify entity @s Item set from storage sgrave2:common temp.item

## Perform actions on a copy of the config value just in case
execute store result score .loop_count_2 sgrave2.temp_var if data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.keep[]
data modify storage sgrave2:common temp.config_copy.item_distribution.keep set from storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.keep
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config_copy.item_distribution.keep[-1]

## Check if item should be kept
execute store result storage sgrave2:common temp.args.slot int 1 run data get entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1].Slot
execute store result score .slot_operation sgrave2.temp_var run function sgrave2:internal/macro/config/graves/slot_distribution/get_slot_operation with storage sgrave2:common temp.args

scoreboard players set .keep_item sgrave2.temp_var 0

##> See the function that returned to .slot_operation for more info on what it returned
execute if score .slot_operation sgrave2.temp_var matches 11 run scoreboard players set .keep_item sgrave2.temp_var 1

execute unless score .slot_operation sgrave2.temp_var matches 1.. run function sgrave2:internal/grave/generate/distribute_items/keep/check_item_predicates with storage sgrave2:common temp.args

scoreboard players set .slot_operation sgrave2.temp_var 0

## .keep_item = 1 ⭢ Keep item in player's inventory
## .keep_item = 0 ⭢ Pass the item to the next operation
execute unless score .keep_item sgrave2.temp_var matches 1 run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items prepend from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Remove 1 from iterator count
## If the iterator count is not 0,
## Check if next item should be kept
scoreboard players remove .loop_count sgrave2.temp_var 1

data remove storage sgrave2:common temp

execute if score .loop_count sgrave2.temp_var matches 1.. if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/distribute_items/keep with storage sgrave2:common configs
