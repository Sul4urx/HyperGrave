#<< grave/pop
#<< grave/pop_icd_item

## Game Modes
scoreboard players set .check_requirements.gamemodes hygrave.temp_var 1
execute if score (requirements/grave_looting_requirements/owners/gamemodes/survival) hygrave.config matches 0 if entity @s[gamemode=survival] run return run scoreboard players set .check_requirements.gamemodes hygrave.temp_var 0
execute if score (requirements/grave_looting_requirements/owners/gamemodes/adventure) hygrave.config matches 0 if entity @s[gamemode=adventure] run return run scoreboard players set .check_requirements.gamemodes hygrave.temp_var 0
execute if score (requirements/grave_looting_requirements/owners/gamemodes/creative) hygrave.config matches 0 if entity @s[gamemode=creative] run return run scoreboard players set .check_requirements.gamemodes hygrave.temp_var 0

## Items
scoreboard players set .check_requirements.items hygrave.temp_var 0

execute unless data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_ids[0] run scoreboard players set .check_requirements.items hygrave.temp_var 1

execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_ids[0] run function hygrave:internal/grave/pop/check_requirements/owners/items with storage hygrave:common configs.value.requirements.grave_looting_requirements.owners
execute if score .check_requirements.items hygrave.temp_var matches 1 if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_ids[0] run function hygrave:internal/grave/pop/check_requirements/owners/items/remove with storage hygrave:common configs.value.requirements.grave_looting_requirements.owners

## XP
scoreboard players set .check_requirements.xp hygrave.temp_var 0

execute store result score .player_xp hygrave.temp_var run xp query @s levels
execute if score .player_xp hygrave.temp_var >= (requirements/grave_looting_requirements/owners/xp) hygrave.config run scoreboard players set .check_requirements.xp hygrave.temp_var 1

execute store result storage hygrave:common temp.args.value int 1 run data get storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.xp.levels -1

execute if score .check_requirements.xp hygrave.temp_var matches 1 run function hygrave:internal/macro/xp_add_level with storage hygrave:common temp.args