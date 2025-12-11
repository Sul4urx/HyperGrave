#<< load
#<< loop/1t

## Schedule function to run again
schedule function sgrave2:internal/loop/1t 1t

## Define variables
scoreboard players set (6) sgrave2.var 6
scoreboard players set (10) sgrave2.var 10
scoreboard players set (25) sgrave2.var 25
scoreboard players set (45) sgrave2.var 45
scoreboard players set (60) sgrave2.var 60
scoreboard players set (100) sgrave2.var 100
scoreboard players set (405) sgrave2.var 405
scoreboard players set (1000) sgrave2.var 1000
scoreboard players set (1625) sgrave2.var 1625
scoreboard players set (3600) sgrave2.var 3600
scoreboard players set (2520) sgrave2.var 2520

##> Start GIDs from 1000
execute unless score .global sgrave2.gid matches 1000.. run scoreboard players set .global sgrave2.gid 1000

##> First GID
execute if score .global sgrave2.gid matches ..1127 run scoreboard players set (first_gid) sgrave2.var 1001
execute if score .global sgrave2.gid matches 1128.. run scoreboard players operation (first_gid) sgrave2.var = .global sgrave2.gid
execute if score .global sgrave2.gid matches 1128.. run scoreboard players remove (first_gid) sgrave2.var 126

##> Start BIDs from 2000
execute unless score .global sgrave2.bid matches 2000.. run scoreboard players set .global sgrave2.bid 2000

##> First BID
execute if score .global sgrave2.bid matches ..2127 run scoreboard players set (first_bid) sgrave2.var 2001
execute if score .global sgrave2.bid matches 2128.. run scoreboard players operation (first_bid) sgrave2.var = .global sgrave2.bid
execute if score .global sgrave2.bid matches 2128.. run scoreboard players remove (first_bid) sgrave2.var 126

## Change game rules so that SGrave can work properly
function sgrave2:internal/misc/change_gamerules

## Register configs
function sgrave2:internal/config/register

## Add a player to player map, if they don't exist there
execute as @a at @s unless score @s sgrave2.pid matches 1.. run function sgrave2:internal/map/players/insert

## Player died
execute as @a[scores={sgrave2.death_count=1..}] at @s run function sgrave2:internal/event/player/player_died
scoreboard players set @a sgrave2.death_count 0

## Update active graves
function sgrave2:internal/map/graves/active/update

## Show SGrave info
execute as @a at @s unless score @s sgrave2.info matches 0 run function sgrave2:run/info
scoreboard players set @a sgrave2.info 0
scoreboard players enable @a sgrave2.info

## Show SGrave help menu
execute as @a at @s if score @s sgrave2.help matches 1.. run function sgrave2:run/help
scoreboard players set @a sgrave2.help 0
scoreboard players enable @a sgrave2.help

## Respond to score triggers

##> Show grave info
execute as @a at @s if score @s sgrave2.show_grave_info matches 1.. run function sgrave2:internal/grave/show_info/check_conditions
execute as @a at @s if score @s sgrave2.show_grave_info matches ..-1 run function sgrave2:internal/grave/show_info/check_conditions
scoreboard players set @a sgrave2.show_grave_info 0
scoreboard players enable @a sgrave2.show_grave_info

##>> View next
execute as @a[scores={sgrave2.show_grave_info.view_next=1000..}] at @s run function sgrave2:internal/grave/show_info/show_non-admin/view_next
scoreboard players set @a sgrave2.show_grave_info.view_next 0
scoreboard players enable @a sgrave2.show_grave_info.view_next

##>> View previous
execute as @a[scores={sgrave2.show_grave_info.view_previous=1000..}] at @s run function sgrave2:internal/grave/show_info/show_non-admin/view_previous
scoreboard players set @a sgrave2.show_grave_info.view_previous 0
scoreboard players enable @a sgrave2.show_grave_info.view_previous

##> Remotely open grave
execute as @a[scores={sgrave2.remote_open_grave=1000..}] at @s run function sgrave2:internal/event/player/player_tried_to_ropen_grave
scoreboard players set @a sgrave2.remote_open_grave 0
scoreboard players enable @a sgrave2.remote_open_grave

## Grave management
execute as @e[tag=sgrave2.grave.base] at @s run function sgrave2:internal/grave/main

## Player map management
execute as @a at @s run function sgrave2:internal/map/players/main

## Remove temp tags
tag @e[tag=sgrave2.temp.grave.base] remove sgrave2.temp.grave.base
tag @e[tag=sgrave2.temp.grave.owner] remove sgrave2.temp.grave.owner
tag @e[tag=sgrave2.temp.grave.interaction] remove sgrave2.temp.grave.interaction
tag @e[tag=sgrave2.temp.grave.interactor] remove sgrave2.temp.grave.interactor
tag @e[tag=sgrave2.temp.grave.item_to_give_back] remove sgrave2.temp.grave.item_to_give_back
tag @e[tag=sgrave2.temp.grave.player_head] remove sgrave2.temp.grave.player_head
tag @e[tag=sgrave2.temp.item_manipulator] remove sgrave2.temp.item_manipulator

## Remove temp data and temp scores
data remove storage sgrave2:common temp
scoreboard objectives remove sgrave2.temp_var
scoreboard objectives add sgrave2.temp_var dummy