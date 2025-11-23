#<< grave/generate/take_xp/main

## Convert levels to total
## The formulas differ for different ranges of levels
execute if score .xp.levels sgrave2.temp_var matches 0..16 run function sgrave2:internal/grave/generate/take_xp/calculate_total/0to16
execute if score .xp.levels sgrave2.temp_var matches 17..31 run function sgrave2:internal/grave/generate/take_xp/calculate_total/17to31
execute if score .xp.levels sgrave2.temp_var matches 32..99 run function sgrave2:internal/grave/generate/take_xp/calculate_total/from32

## Add the remaining point
scoreboard players operation .xp.total sgrave2.temp_var += .xp.points sgrave2.temp_var

##> If the player has more than 100 levels (30970 points in total), set the total to
##> ∞ (30970) to prevent integer limit issues
execute if score .xp.levels sgrave2.temp_var matches 100.. run scoreboard players set .xp.total sgrave2.temp_var 30970