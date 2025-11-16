#<< loop/1s

## Remove 1 second from despawn time
scoreboard players remove @s sgrave2.despawn_time 1

## Bring the nessecary elements of maps to last index so that we can work with them

##> Grave
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args

##> Player (Owner)
function sgrave2:internal/map/players/lookup with entity @s item.components.minecraft:custom_data.sgrave2:common.owner
data modify storage sgrave2:common temp.args.gid set from entity @s item.components.minecraft:custom_data.sgrave2:common.gid

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args

## If despawn time reaches 0, delete grave
execute if score @s sgrave2.despawn_time matches ..0 run return run function sgrave2:internal/grave/despawn_time/delete_grave

## Store the despawn time value 
## in the grave and grave map
execute store result entity @s item.components.minecraft:custom_data.sgrave2:common.despawn_time int 1 run scoreboard players get @s sgrave2.despawn_time

data modify storage sgrave2:common graves[-1].data.despawn_time set from entity @s item.components.minecraft:custom_data.sgrave2:common.despawn_time
data modify storage sgrave2:common players[-1].graves[-1].data.despawn_time set from entity @s item.components.minecraft:custom_data.sgrave2:common.despawn_time