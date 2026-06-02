execute store result score .helper.time.get_minutes.result hygrave.temp_var run function hygrave:internal/helper/time/current/query_day_time
scoreboard players operation .helper.time.get_minutes.result hygrave.temp_var %= (1000) hygrave.var
scoreboard players operation .helper.time.get_minutes.result hygrave.temp_var *= (6) hygrave.var
scoreboard players operation .helper.time.get_minutes.result hygrave.temp_var /= (100) hygrave.var

return run scoreboard players get .helper.time.get_minutes.result hygrave.temp_var