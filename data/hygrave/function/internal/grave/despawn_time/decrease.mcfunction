#<< loop/1s

## Remove 1 second from despawn time
scoreboard players remove @s hygrave.despawn_time 1

## Bring the nessecary elements of maps to last index so that we can work with them

##> Grave
function hygrave:internal/map/graves/lookup with storage hygrave:common temp.args

##> Player (Owner)
function hygrave:internal/map/players/lookup with entity @s item.components.minecraft:custom_data.hygrave:common.owner
data modify storage hygrave:common temp.args.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid

function hygrave:internal/map/players/graves/lookup with storage hygrave:common temp.args

## If despawn time reaches 0, delete grave
execute if score @s hygrave.despawn_time matches ..0 run return run function hygrave:internal/grave/despawn_time/delete_grave

## Store the despawn time value 
## in the grave and grave map
execute store result entity @s item.components.minecraft:custom_data.hygrave:common.despawn_time int 1 run scoreboard players get @s hygrave.despawn_time

data modify storage hygrave:common graves[-1].data.despawn_time set from entity @s item.components.minecraft:custom_data.hygrave:common.despawn_time
data modify storage hygrave:common players[-1].graves[-1].data.despawn_time set from entity @s item.components.minecraft:custom_data.hygrave:common.despawn_time