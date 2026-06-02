execute store result score .helper.time.get_hours.result hygrave.temp_var run function hygrave:internal/helper/time/current/query_day_time

scoreboard players operation .helper.time.get_hours.result hygrave.temp_var /= (1000) hygrave.var

scoreboard players add .helper.time.get_hours.result hygrave.temp_var 6
execute if score .helper.time.get_hours.result hygrave.temp_var matches 24.. run scoreboard players remove .helper.time.get_hours.result hygrave.temp_var 24

return run scoreboard players get .helper.time.get_hours.result hygrave.temp_var