#<< config/register

# Register sub-configs for Item Distribution config

## Grave Generation Fail

##> Operation
execute unless score (graves/item_distribution/grave_generation_fail/operation) sgrave2.config matches 0..1 run scoreboard players set (graves/item_distribution/grave_generation_fail/operation) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.item_distribution.grave_generation_fail.operation byte 1 run scoreboard players get (graves/item_distribution/grave_generation_fail/operation) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_fail{operation:0b} run data modify storage sgrave2:common configs.text.graves.item_distribution.grave_generation_fail.operation set value "§cRemove"
execute if data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_fail{operation:1b} run data modify storage sgrave2:common configs.text.graves.item_distribution.grave_generation_fail.operation set value "§aKeep"

## Grave Generation Success

##> Remove
execute unless data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.remove[] run data modify storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.remove set value [{predicates: {"minecraft:enchantments": [{levels:{enchantments: "minecraft:vanishing_curse"}}]}}]

##> Keep
execute unless data storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.keep[] run data modify storage sgrave2:common configs.value.graves.item_distribution.grave_generation_success.keep set value [{count:-1}]


