#@> Executed from:
#@>   function hygrave:internal/grave/limit/loaded_active_graves/search_min_score

scoreboard players operation .grave_limit.lag.chosen_gid hygrave.temp_var = @s hygrave.gid
scoreboard players operation .grave_limit.lag.min_score hygrave.temp_var = .grave_limit.lag.grave_score hygrave.temp_var