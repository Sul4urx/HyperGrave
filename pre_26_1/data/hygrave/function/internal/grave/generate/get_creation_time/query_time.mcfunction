#@> Executed from:
#@>   hygrave:internal/grave/generate/get_creation_time

execute store result score .time hygrave.temp_var run time query daytime
execute store result score .day_times hygrave.temp_var run time query day
scoreboard players operation .day_times hygrave.temp_var *= (24000) hygrave.var
scoreboard players operation .time hygrave.temp_var += .day_times hygrave.temp_var
return run scoreboard players get .time hygrave.temp_var