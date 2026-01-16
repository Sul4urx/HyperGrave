#<< grave/generate

## Game Modes
scoreboard players set .check_costs.gamemodes hygrave.temp_var 1
execute if score (costs/grave_generation_costs/with_item/gamemodes/survival) hygrave.config matches 0 if entity @s[gamemode=survival] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0
execute if score (costs/grave_generation_costs/with_item/gamemodes/adventure) hygrave.config matches 0 if entity @s[gamemode=adventure] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0
execute if score (costs/grave_generation_costs/with_item/gamemodes/creative) hygrave.config matches 0 if entity @s[gamemode=creative] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0

## Items
scoreboard players set .check_costs.items hygrave.temp_var 0

execute unless data storage hygrave:common configs.value.costs.grave_generation_costs.with_item.item_ids[0] run scoreboard players set .check_costs.items hygrave.temp_var 1

execute if data storage hygrave:common configs.value.costs.grave_generation_costs.with_item.item_ids[0] run function hygrave:internal/grave/generate/check_costs/with_item/items with storage hygrave:common configs.value.costs.grave_generation_costs.with_item

execute if score (general/mod_compatibility_mode) hygrave.config matches 1 run scoreboard players set .check_costs.items hygrave.temp_var 1

## XP
scoreboard players set .check_costs.xp hygrave.temp_var 0

execute store result score .xp_cost_levels hygrave.temp_var run data get storage hygrave:common configs.value.costs.grave_generation_costs.with_item.xp.levels

execute store result score .player_xp hygrave.temp_var run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.levels
execute if score .player_xp hygrave.temp_var >= .xp_cost_levels hygrave.temp_var run scoreboard players set .check_costs.xp hygrave.temp_var 1
