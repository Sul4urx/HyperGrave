#<< grave/generate

## Calculate total XP
execute store result score .xp.levels hygrave.temp_var run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.levels
execute store result score .xp.points hygrave.temp_var run data get entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.points

function hygrave:internal/grave/generate/take_xp/calculate_total/main

execute store result entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.total int 1 run scoreboard players get .xp.total hygrave.temp_var

## Take away all XP
xp set @s 0 points
xp set @s 0 levels

