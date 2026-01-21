#<< grave/unpack
#<< grave/unpack_icd_item

## Game Modes
scoreboard players set .check_costs.gamemodes hygrave.temp_var 1
execute if score (costs/grave_looting_costs/owners/gamemodes/survival) hygrave.config matches 0 if entity @s[gamemode=survival] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0
execute if score (costs/grave_looting_costs/owners/gamemodes/adventure) hygrave.config matches 0 if entity @s[gamemode=adventure] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0
execute if score (costs/grave_looting_costs/owners/gamemodes/creative) hygrave.config matches 0 if entity @s[gamemode=creative] run return run scoreboard players set .check_costs.gamemodes hygrave.temp_var 0

## Items
scoreboard players set .check_costs.items hygrave.temp_var 0

execute unless data storage hygrave:common configs.value.costs.grave_looting_costs.owners.item_ids[0] run scoreboard players set .check_costs.items hygrave.temp_var 1

execute if data storage hygrave:common configs.value.costs.grave_looting_costs.owners.item_ids[0] run function hygrave:internal/grave/unpack/check_costs/owners/items with storage hygrave:common configs.value.costs.grave_looting_costs.owners
execute if score .check_costs.items hygrave.temp_var matches 1 if data storage hygrave:common configs.value.costs.grave_looting_costs.owners.item_ids[0] run function hygrave:internal/grave/unpack/check_costs/owners/items/remove with storage hygrave:common configs.value.costs.grave_looting_costs.owners

## XP
scoreboard players set .check_costs.xp hygrave.temp_var 0

execute store result score .player_xp hygrave.temp_var run xp query @s levels
execute if score .player_xp hygrave.temp_var >= (costs/grave_looting_costs/owners/xp) hygrave.config run scoreboard players set .check_costs.xp hygrave.temp_var 1

execute store result storage hygrave:common temp.args.value int 1 run data get storage hygrave:common configs.value.costs.grave_looting_costs.owners.xp.levels -1

execute if score .check_costs.xp hygrave.temp_var matches 1 run function hygrave:internal/macro/xp_add_level with storage hygrave:common temp.args
