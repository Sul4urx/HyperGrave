#<< grave/generate/copy_items

# Loop through all items stored in the grave
# and if any of the items match the item predicates 
# in the config Graves / Item Distribution / Grave Generation Success / Remove,
# remove the item from grave so that it doesn't get taken

## Manipulate current item
data modify storage sgrave2:common temp.item set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]
data remove storage sgrave2:common temp.item.Slot
data modify entity @s Item set from storage sgrave2:common temp.item

## Perform actions on a copy of the config value just in case
execute store result score .loop_count_2 sgrave2.temp_var if data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.remove[]
data modify storage sgrave2:common temp.config_copy.item_distribution.remove set from storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.remove
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config_copy.item_distribution.remove[-1]

## Check if item should be removed
scoreboard players set .remove_item sgrave2.temp_var 0

function sgrave2:internal/grave/generate/distribute_items/remove/check_item_predicates with storage sgrave2:common temp.args

## .remove_item = 1 ⭢ Remove item in player's inventory
## .remove_item = 0 ⭢ Pass the item to the next operation
execute if score .remove_item sgrave2.temp_var matches 1 run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1].components.minecraft:custom_data.sgrave2:common.delete_item set value 1b
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items prepend from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Remove 1 from iterator count
## If the iterator count is not 0,
## Check if next item should be removed
scoreboard players remove .loop_count sgrave2.temp_var 1
execute if score .loop_count sgrave2.temp_var matches 1.. if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/distribute_items/remove with storage sgrave2:common configs
