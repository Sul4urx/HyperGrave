## Add player to player map
data modify storage hygrave:common players append value {player:{uuid:[I;],name:"not defined"}}

## Set data (UUID, name, PID)

##> UUID
data modify storage hygrave:common players[-1].player.uuid set from entity @s UUID

##> Name
summon minecraft:item ~ ~32767 ~ {Tags:["hygrave.temp.item_to_get_players_name"],Item:{id:"minecraft:player_head"}}
item modify entity @n[tag=hygrave.temp.item_to_get_players_name] container.0 {function:"minecraft:fill_player_head",entity:"this"}
data modify storage hygrave:common players[-1].player.name set from entity @n[tag=hygrave.temp.item_to_get_players_name] Item.components.minecraft:profile.name
kill @e[tag=hygrave.temp.item_to_get_players_name]

##> PID
execute store result storage hygrave:common players[-1].player.pid int 1 store result score @s hygrave.pid run scoreboard players add .global hygrave.pid 1
