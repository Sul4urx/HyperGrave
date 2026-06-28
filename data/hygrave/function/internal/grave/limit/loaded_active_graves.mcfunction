#@> Executed from:
#@>   function hygrave:internal/loop/1t

## Get the grave with the least despawn time
execute as @e[tag=hygrave.grave.base] at @s run function hygrave:internal/grave/limit/loaded_active_graves/search_min_score

execute as @e[tag=hygrave.grave.base] at @s if score @s hygrave.gid = .grave_limit.lag.chosen_gid hygrave.temp_var run function hygrave:internal/grave/limit/loaded_active_graves/delete_chosen_grave