#<< grave/generate/take_xp/main

## If player's levels ≥ 32,
## the formula for converting levels to total xp is:
## 4.5*(levels^2) - 162.5*levels + 2220
scoreboard players operation .xp.value1 hygrave.temp_var = .xp.levels hygrave.temp_var
scoreboard players operation .xp.value1 hygrave.temp_var *= .xp.value1 hygrave.temp_var
scoreboard players operation .xp.value1 hygrave.temp_var *= (45) hygrave.var

scoreboard players operation .xp.value2 hygrave.temp_var = .xp.levels hygrave.temp_var
scoreboard players operation .xp.value2 hygrave.temp_var *= (1625) hygrave.var

scoreboard players operation .xp.total hygrave.temp_var += .xp.value1 hygrave.temp_var
scoreboard players operation .xp.total hygrave.temp_var -= .xp.value2 hygrave.temp_var
scoreboard players add .xp.total hygrave.temp_var 22200
scoreboard players operation .xp.total hygrave.temp_var /= (10) hygrave.var