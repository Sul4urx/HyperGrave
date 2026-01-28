#<< config/register

# Register sub-configs for Grave Remote Looting Requirements config

## Owners

##> Items
execute unless data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.item_ids[] run data modify storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.item_ids set value []

execute unless score (costs/grave_remote_looting_costs/owners/item_remove_count) hygrave.config matches 0.. run scoreboard players set (costs/grave_remote_looting_costs/owners/item_remove_count) hygrave.config 1

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.item_remove_count int 1 run scoreboard players get (costs/grave_remote_looting_costs/owners/item_remove_count) hygrave.config

data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.item_remove_count set string storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.item_remove_count

##> XP
execute unless score (costs/grave_remote_looting_costs/owners/xp) hygrave.config matches 0.. run scoreboard players set (costs/grave_remote_looting_costs/owners/xp) hygrave.config 0

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.xp.levels int 1 run scoreboard players get (costs/grave_remote_looting_costs/owners/xp) hygrave.config

data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.xp.levels set string storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.xp.levels

##> Game Modes
execute unless score (costs/grave_remote_looting_costs/owners/gamemodes/survival) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/owners/gamemodes/survival) hygrave.config 0
execute unless score (costs/grave_remote_looting_costs/owners/gamemodes/adventure) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/owners/gamemodes/adventure) hygrave.config 0
execute unless score (costs/grave_remote_looting_costs/owners/gamemodes/creative) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/owners/gamemodes/creative) hygrave.config 0

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes.survival byte 1 run scoreboard players get (costs/grave_remote_looting_costs/owners/gamemodes/survival) hygrave.config
execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_remote_looting_costs/owners/gamemodes/adventure) hygrave.config
execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes.creative byte 1 run scoreboard players get (costs/grave_remote_looting_costs/owners/gamemodes/creative) hygrave.config

execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{survival:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.survival set value "§cS"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{adventure:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.adventure set value "§cA"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{creative:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.creative set value "§cC"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{survival:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.survival set value "§aS"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{adventure:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.adventure set value "§aA"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.gamemodes{creative:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.owners.gamemodes.creative set value "§aC"


## Non-Owners

##> Items
execute unless data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.item_ids[] run data modify storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.item_ids set value []

execute unless score (costs/grave_remote_looting_costs/non_owners/item_remove_count) hygrave.config matches 0.. run scoreboard players set (costs/grave_remote_looting_costs/non_owners/item_remove_count) hygrave.config 1

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.item_remove_count int 1 run scoreboard players get (costs/grave_remote_looting_costs/non_owners/item_remove_count) hygrave.config

data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.item_remove_count set string storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.item_remove_count

##> XP
execute unless score (costs/grave_remote_looting_costs/non_owners/xp) hygrave.config matches 0.. run scoreboard players set (costs/grave_remote_looting_costs/non_owners/xp) hygrave.config 0

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.xp.levels int 1 run scoreboard players get (costs/grave_remote_looting_costs/non_owners/xp) hygrave.config

data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.xp.levels set string storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.xp.levels

##> Game Modes
execute unless score (costs/grave_remote_looting_costs/non_owners/gamemodes/survival) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/non_owners/gamemodes/survival) hygrave.config 0
execute unless score (costs/grave_remote_looting_costs/non_owners/gamemodes/adventure) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/non_owners/gamemodes/adventure) hygrave.config 0
execute unless score (costs/grave_remote_looting_costs/non_owners/gamemodes/creative) hygrave.config matches 0..1 run scoreboard players set (costs/grave_remote_looting_costs/non_owners/gamemodes/creative) hygrave.config 0

execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes.survival byte 1 run scoreboard players get (costs/grave_remote_looting_costs/non_owners/gamemodes/survival) hygrave.config
execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_remote_looting_costs/non_owners/gamemodes/adventure) hygrave.config
execute store result storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes.creative byte 1 run scoreboard players get (costs/grave_remote_looting_costs/non_owners/gamemodes/creative) hygrave.config

execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{survival:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.survival set value "§cS"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{adventure:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.adventure set value "§cA"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{creative:0b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.creative set value "§cC"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{survival:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.survival set value "§aS"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{adventure:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.adventure set value "§aA"
execute if data storage hygrave:common configs.value.costs.grave_remote_looting_costs.non_owners.gamemodes{creative:1b} run data modify storage hygrave:common configs.text.costs.grave_remote_looting_costs.non_owners.gamemodes.creative set value "§aC"