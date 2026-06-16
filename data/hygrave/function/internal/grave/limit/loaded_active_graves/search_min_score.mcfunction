
## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
data modify storage hygrave:common temp.mcargs.'database/graves/lookup'.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid
function hygrave:internal/database/graves/lookup with storage hygrave:common temp.mcargs.'database/graves/lookup'

## Store the grave's score
## The grave with the least score will be picked
scoreboard players operation .grave_limit.lag.grave_score hygrave.temp_var = @s hygrave.despawn_time
execute if score (graves/freeze_grave_despawn_time) hygrave.config matches 1 run scoreboard players set .grave_limit.lag.grave_score hygrave.temp_var 2147483646

## If grave's score is less than the minimum score recorded, update minimum score
## If grave's score is equal to the minimum score recorded, pick the grave with the lower GID
execute unless score .grave_limit.lag.min_score hygrave.temp_var matches 0.. run function hygrave:internal/grave/limit/loaded_active_graves/search_min_score/update_min_score

execute if score .grave_limit.lag.grave_score hygrave.temp_var < .grave_limit.lag.min_score hygrave.temp_var run function hygrave:internal/grave/limit/loaded_active_graves/search_min_score/update_min_score

execute if score .grave_limit.lag.grave_score hygrave.temp_var = .grave_limit.lag.min_score hygrave.temp_var if score .grave_limit.lag.chosen_gid hygrave.temp_var > @s hygrave.gid run function hygrave:internal/grave/limit/loaded_active_graves/search_min_score/update_min_score