#<< config/register

# Register sub-configs for Grave Looting Requirements config

## Owners

##> Items
execute unless data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_ids[] run data modify storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_ids set value []

execute unless score (requirements/grave_looting_requirements/owners/item_remove_count) hygrave.config matches 0.. run scoreboard players set (requirements/grave_looting_requirements/owners/item_remove_count) hygrave.config 1

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_remove_count int 1 run scoreboard players get (requirements/grave_looting_requirements/owners/item_remove_count) hygrave.config

data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.item_remove_count set string storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.item_remove_count

##> XP
execute unless score (requirements/grave_looting_requirements/owners/xp) hygrave.config matches 0.. run scoreboard players set (requirements/grave_looting_requirements/owners/xp) hygrave.config 0

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.xp.levels int 1 run scoreboard players get (requirements/grave_looting_requirements/owners/xp) hygrave.config

data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.xp.levels set string storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.xp.levels

##> Game Modes
execute unless score (requirements/grave_looting_requirements/owners/gamemodes/survival) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/owners/gamemodes/survival) hygrave.config 1
execute unless score (requirements/grave_looting_requirements/owners/gamemodes/adventure) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/owners/gamemodes/adventure) hygrave.config 1
execute unless score (requirements/grave_looting_requirements/owners/gamemodes/creative) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/owners/gamemodes/creative) hygrave.config 1

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes.survival byte 1 run scoreboard players get (requirements/grave_looting_requirements/owners/gamemodes/survival) hygrave.config
execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes.adventure byte 1 run scoreboard players get (requirements/grave_looting_requirements/owners/gamemodes/adventure) hygrave.config
execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes.creative byte 1 run scoreboard players get (requirements/grave_looting_requirements/owners/gamemodes/creative) hygrave.config

execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{survival:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.survival set value "§cS"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{adventure:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.adventure set value "§cA"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{creative:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.creative set value "§cC"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{survival:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.survival set value "§aS"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{adventure:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.adventure set value "§aA"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.owners.gamemodes{creative:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.owners.gamemodes.creative set value "§aC"


## Non-Owners

##> Items
execute unless data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.item_ids[] run data modify storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.item_ids set value []

execute unless score (requirements/grave_looting_requirements/non_owners/item_remove_count) hygrave.config matches 0.. run scoreboard players set (requirements/grave_looting_requirements/non_owners/item_remove_count) hygrave.config 1

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.item_remove_count int 1 run scoreboard players get (requirements/grave_looting_requirements/non_owners/item_remove_count) hygrave.config

data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.item_remove_count set string storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.item_remove_count

##> XP
execute unless score (requirements/grave_looting_requirements/non_owners/xp) hygrave.config matches 0.. run scoreboard players set (requirements/grave_looting_requirements/non_owners/xp) hygrave.config 0

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.xp.levels int 1 run scoreboard players get (requirements/grave_looting_requirements/non_owners/xp) hygrave.config

data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.xp.levels set string storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.xp.levels

##> Game Modes
execute unless score (requirements/grave_looting_requirements/non_owners/gamemodes/survival) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/non_owners/gamemodes/survival) hygrave.config 1
execute unless score (requirements/grave_looting_requirements/non_owners/gamemodes/adventure) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/non_owners/gamemodes/adventure) hygrave.config 1
execute unless score (requirements/grave_looting_requirements/non_owners/gamemodes/creative) hygrave.config matches 0..1 run scoreboard players set (requirements/grave_looting_requirements/non_owners/gamemodes/creative) hygrave.config 1

execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes.survival byte 1 run scoreboard players get (requirements/grave_looting_requirements/non_owners/gamemodes/survival) hygrave.config
execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes.adventure byte 1 run scoreboard players get (requirements/grave_looting_requirements/non_owners/gamemodes/adventure) hygrave.config
execute store result storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes.creative byte 1 run scoreboard players get (requirements/grave_looting_requirements/non_owners/gamemodes/creative) hygrave.config

execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{survival:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.survival set value "§cS"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{adventure:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.adventure set value "§cA"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{creative:0b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.creative set value "§cC"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{survival:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.survival set value "§aS"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{adventure:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.adventure set value "§aA"
execute if data storage hygrave:common configs.value.requirements.grave_looting_requirements.non_owners.gamemodes{creative:1b} run data modify storage hygrave:common configs.text.requirements.grave_looting_requirements.non_owners.gamemodes.creative set value "§aC"