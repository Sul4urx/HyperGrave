#<< grave/generate

## If total weight is 0, reset all weights
execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run scoreboard players reset (graves/xp_distribution/grave_generation_success/remove)
execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run scoreboard players reset (graves/xp_distribution/grave_generation_success/keep)
execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run scoreboard players reset (graves/xp_distribution/grave_generation_success/take)

execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run function hygrave:internal/config/register

## Initialize variables
execute store result score .xp.total.before_death hygrave.temp_var run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.total

## Calculate take XP
########################################
# (2520 * xb * wt) // (2520 * tw) = xt #
########################################
# xb = XP total (before death)         #
# xt = XP to take                      #
# wt = Take operation weight           #
# tw = Total operation weight          #
########################################
scoreboard players operation .xb hygrave.temp_var = .xp.total.before_death hygrave.temp_var
scoreboard players operation .wt hygrave.temp_var = (graves/xp_distribution/grave_generation_success/take) hygrave.config
scoreboard players operation .tw hygrave.temp_var = (graves/xp_distribution/grave_generation_success/total) hygrave.config

scoreboard players set .v1 hygrave.temp_var 2520
scoreboard players operation .v1 hygrave.temp_var *= .xb hygrave.temp_var
scoreboard players operation .v1 hygrave.temp_var *= .wt hygrave.temp_var

scoreboard players set .v2 hygrave.temp_var 2520
scoreboard players operation .v2 hygrave.temp_var *= .tw hygrave.temp_var

scoreboard players operation .xt hygrave.temp_var = .v1 hygrave.temp_var
scoreboard players operation .xt hygrave.temp_var /= .v2 hygrave.temp_var

## Apply operation 'take'
execute store result entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.after_death.total int 1 run scoreboard players get .xt hygrave.temp_var

## Calculate take XP levels and points
execute store result storage hygrave:common temp.args.value int 1 run scoreboard players get .xt hygrave.temp_var
function hygrave:internal/macro/xp_add with storage hygrave:common temp.args

execute store result entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.after_death.levels int 1 run xp query @s levels
execute store result entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.after_death.points int 1 run xp query @s points

xp set @s 0 levels
xp set @s 0 points


## Calculate keep XP
########################################
# (2520 * xb * wk) // (2520 * tw) = xk #
########################################
# xb = XP total (before death)         #
# xk = XP to keep                      #
# wk = Keep operation weight           #
# tw = Total operation weight          #
########################################
scoreboard players operation .xb hygrave.temp_var = .xp.total.before_death hygrave.temp_var
scoreboard players operation .wk hygrave.temp_var = (graves/xp_distribution/grave_generation_success/keep) hygrave.config
scoreboard players operation .tw hygrave.temp_var = (graves/xp_distribution/grave_generation_success/total) hygrave.config

scoreboard players set .v1 hygrave.temp_var 2520
scoreboard players operation .v1 hygrave.temp_var *= .xb hygrave.temp_var
scoreboard players operation .v1 hygrave.temp_var *= .wk hygrave.temp_var

scoreboard players set .v2 hygrave.temp_var 2520
scoreboard players operation .v2 hygrave.temp_var *= .tw hygrave.temp_var

scoreboard players operation .xk hygrave.temp_var = .v1 hygrave.temp_var
scoreboard players operation .xk hygrave.temp_var /= .v2 hygrave.temp_var

## Apply operation 'keep'
execute store result storage hygrave:common temp.args.value int 1 run scoreboard players get .xk hygrave.temp_var
function hygrave:internal/macro/xp_add with storage hygrave:common temp.args
