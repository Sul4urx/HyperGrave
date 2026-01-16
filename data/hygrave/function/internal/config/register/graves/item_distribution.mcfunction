#<< config/register

# Register sub-configs for Item Distribution config

## Grave Generation Fail

##> Operation
execute unless score (graves/item_distribution/grave_generation_fail/operation) hygrave.config matches 0..1 run scoreboard players set (graves/item_distribution/grave_generation_fail/operation) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.item_distribution.grave_generation_fail.operation byte 1 run scoreboard players get (graves/item_distribution/grave_generation_fail/operation) hygrave.config

execute if data storage hygrave:common configs.value.graves.item_distribution.grave_generation_fail{operation:0b} run data modify storage hygrave:common configs.text.graves.item_distribution.grave_generation_fail.operation set value "§cRemove"
execute if data storage hygrave:common configs.value.graves.item_distribution.grave_generation_fail{operation:1b} run data modify storage hygrave:common configs.text.graves.item_distribution.grave_generation_fail.operation set value "§aKeep"

## Grave Generation Success

##> Remove
execute unless data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_items[0] run data modify storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_items set value []
execute unless data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_enchs[0] run data modify storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_enchs set value ["minecraft:vanishing_curse"]

##> Keep
execute unless data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_items[0] run data modify storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_items set value []
execute unless data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_enchs[0] run data modify storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_enchs set value []


