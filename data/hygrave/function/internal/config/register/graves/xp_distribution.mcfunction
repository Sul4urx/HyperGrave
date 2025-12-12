#<< config/register

# Register sub-configs for XP Distribution config

## Grave Generation Fail

##> Remove
execute unless score (graves/xp_distribution/grave_generation_fail/remove) hygrave.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/remove) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.remove int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/remove) hygrave.config

data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_fail.remove set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.remove

##> Keep
execute unless score (graves/xp_distribution/grave_generation_fail/keep) hygrave.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/keep) hygrave.config 2

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.keep int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/keep) hygrave.config

data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_fail.keep set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.keep

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) hygrave.config = (graves/xp_distribution/grave_generation_fail/remove) hygrave.config
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) hygrave.config += (graves/xp_distribution/grave_generation_fail/keep) hygrave.config

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.total int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/total) hygrave.config

execute if score (graves/xp_distribution/grave_generation_fail/total) hygrave.config matches 1.. run data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_fail.total set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_fail.total

execute unless score (graves/xp_distribution/grave_generation_fail/total) hygrave.config matches 1.. run data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_fail.total set value "§c0"

## Grave Generation Success

##> Remove
execute unless score (graves/xp_distribution/grave_generation_success/remove) hygrave.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/remove) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.remove int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/remove) hygrave.config

data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_success.remove set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.remove

##> Keep
execute unless score (graves/xp_distribution/grave_generation_success/keep) hygrave.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/keep) hygrave.config 0

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.keep int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/keep) hygrave.config

data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_success.keep set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.keep

##> Take
execute unless score (graves/xp_distribution/grave_generation_success/take) hygrave.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/take) hygrave.config 11

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.take int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/take) hygrave.config

data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_success.take set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.take

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) hygrave.config = (graves/xp_distribution/grave_generation_success/remove) hygrave.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) hygrave.config += (graves/xp_distribution/grave_generation_success/keep) hygrave.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) hygrave.config += (graves/xp_distribution/grave_generation_success/take) hygrave.config

execute store result storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.total int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/total) hygrave.config

execute if score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_success.total set string storage hygrave:common configs.value.graves.xp_distribution.grave_generation_success.total

execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run data modify storage hygrave:common configs.text.graves.xp_distribution.grave_generation_success.total set value "§c0"


