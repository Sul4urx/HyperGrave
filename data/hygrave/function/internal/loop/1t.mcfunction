#<< load
#<< loop/1t

## Schedule function to run again
schedule function hygrave:internal/loop/1t 1t

## Define variables
scoreboard players set (6) hygrave.var 6
scoreboard players set (10) hygrave.var 10
scoreboard players set (25) hygrave.var 25
scoreboard players set (45) hygrave.var 45
scoreboard players set (60) hygrave.var 60
scoreboard players set (100) hygrave.var 100
scoreboard players set (405) hygrave.var 405
scoreboard players set (1000) hygrave.var 1000
scoreboard players set (1625) hygrave.var 1625
scoreboard players set (3600) hygrave.var 3600
scoreboard players set (2520) hygrave.var 2520

##> Start GIDs from 1000
execute unless score .global hygrave.gid matches 1000.. run scoreboard players set .global hygrave.gid 1000

##> First GID
execute if score .global hygrave.gid matches ..1127 run scoreboard players set (first_gid) hygrave.var 1001
execute if score .global hygrave.gid matches 1128.. run scoreboard players operation (first_gid) hygrave.var = .global hygrave.gid
execute if score .global hygrave.gid matches 1128.. run scoreboard players remove (first_gid) hygrave.var 126

##> Start BIDs from 2000
execute unless score .global hygrave.bid matches 2000.. run scoreboard players set .global hygrave.bid 2000

##> First BID
execute if score .global hygrave.bid matches ..2127 run scoreboard players set (first_bid) hygrave.var 2001
execute if score .global hygrave.bid matches 2128.. run scoreboard players operation (first_bid) hygrave.var = .global hygrave.bid
execute if score .global hygrave.bid matches 2128.. run scoreboard players remove (first_bid) hygrave.var 126

## Change game rules so that HyperGrave can work properly
function hygrave:internal/misc/change_gamerules

## Register configs
function hygrave:internal/config/register

## Add a player to player map, if they don't exist there
execute as @a at @s unless score @s hygrave.pid matches 1.. run function hygrave:internal/map/players/insert

## Player died
execute as @a[scores={hygrave.death_count=1..}] at @s run function hygrave:internal/event/player/player_died
scoreboard players set @a hygrave.death_count 0

## Update active graves
function hygrave:internal/map/graves/active/update

## Show HyperGrave info
execute as @a at @s unless score @s hygrave.info matches 0 run function hygrave:run/info
scoreboard players set @a hygrave.info 0
scoreboard players enable @a hygrave.info

## Show HyperGrave help menu
execute as @a at @s if score @s hygrave.help matches 1.. run function hygrave:run/help
scoreboard players set @a hygrave.help 0
scoreboard players enable @a hygrave.help

## Respond to score triggers

##> Show grave info
execute as @a at @s if score @s hygrave.show_grave_info matches 1.. run function hygrave:internal/grave/show_info/check_conditions
execute as @a at @s if score @s hygrave.show_grave_info matches ..-1 run function hygrave:internal/grave/show_info/check_conditions
scoreboard players set @a hygrave.show_grave_info 0
scoreboard players enable @a hygrave.show_grave_info

##>> View next
execute as @a[scores={hygrave.show_grave_info.view_next=1000..}] at @s run function hygrave:internal/grave/show_info/show_non-admin/view_next
scoreboard players set @a hygrave.show_grave_info.view_next 0
scoreboard players enable @a hygrave.show_grave_info.view_next

##>> View previous
execute as @a[scores={hygrave.show_grave_info.view_previous=1000..}] at @s run function hygrave:internal/grave/show_info/show_non-admin/view_previous
scoreboard players set @a hygrave.show_grave_info.view_previous 0
scoreboard players enable @a hygrave.show_grave_info.view_previous

##> Remotely loot grave
execute as @a[scores={hygrave.remote_loot_grave=1000..}] at @s run function hygrave:internal/event/player/player_tried_to_remotely_unpack_grave
scoreboard players set @a hygrave.remote_loot_grave 0
scoreboard players enable @a hygrave.remote_loot_grave

## Grave management
execute as @e[tag=hygrave.grave.base] at @s run function hygrave:internal/grave/main

## Player map management
execute as @a at @s run function hygrave:internal/map/players/main

## Remove temp tags
tag @e[tag=hygrave.temp.grave.base] remove hygrave.temp.grave.base
tag @e[tag=hygrave.temp.grave.owner] remove hygrave.temp.grave.owner
tag @e[tag=hygrave.temp.grave.interaction] remove hygrave.temp.grave.interaction
tag @e[tag=hygrave.temp.grave.interactor] remove hygrave.temp.grave.interactor
tag @e[tag=hygrave.temp.grave.item_to_give_back] remove hygrave.temp.grave.item_to_give_back
tag @e[tag=hygrave.temp.grave.player_head] remove hygrave.temp.grave.player_head
tag @e[tag=hygrave.temp.item_manipulator] remove hygrave.temp.item_manipulator

## Remove temp data and temp scores
data remove storage hygrave:common temp
scoreboard objectives remove hygrave.temp_var
scoreboard objectives add hygrave.temp_var dummy