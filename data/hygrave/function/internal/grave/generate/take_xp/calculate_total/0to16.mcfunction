#<< grave/generate/take_xp/main

## If player's levels is a number from 0 to 16,
## the formula for converting levels to total xp is:
## levels^2 + 6*levels
scoreboard players operation .xp.value1 hygrave.temp_var = .xp.levels hygrave.temp_var
scoreboard players operation .xp.value1 hygrave.temp_var *= .xp.value1 hygrave.temp_var

scoreboard players operation .xp.value2 hygrave.temp_var = .xp.levels hygrave.temp_var
scoreboard players operation .xp.value2 hygrave.temp_var *= (6) hygrave.var

scoreboard players operation .xp.total hygrave.temp_var += .xp.value1 hygrave.temp_var
scoreboard players operation .xp.total hygrave.temp_var += .xp.value2 hygrave.temp_var