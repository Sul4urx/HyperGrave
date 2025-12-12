## Add player to player map
data modify storage sgrave2:common players append value {player:{uuid:[I;],name:"not defined"}}

## Set data (UUID, name, PID)

##> UUID
data modify storage sgrave2:common players[-1].player.uuid set from entity @s UUID

##> Name
summon minecraft:item ~ ~32767 ~ {Tags:["sgrave2.temp.item_to_get_players_name"],Item:{id:"minecraft:player_head"}}
item modify entity @n[tag=sgrave2.temp.item_to_get_players_name] container.0 {function:"minecraft:fill_player_head",entity:"this"}
data modify storage sgrave2:common players[-1].player.name set from entity @n[tag=sgrave2.temp.item_to_get_players_name] Item.components.minecraft:profile.name
kill @e[tag=sgrave2.temp.item_to_get_players_name]

##> PID
execute store result storage sgrave2:common players[-1].player.pid int 1 store result score @s sgrave2.pid run scoreboard players add .global sgrave2.pid 1
