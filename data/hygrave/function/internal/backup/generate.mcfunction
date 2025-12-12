#<< event/player/player_died

## Bring the nessecary elements of maps to last index so that we can work with them

##> Player
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @s hygrave.pid 
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args

## Add backup data
data modify storage hygrave:common backups append value {}

## Copy the item data from the player and paste it to the grave
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:0b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:1b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:2b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:3b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:4b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:5b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:6b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:7b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:8b}]

data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:9b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:10b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:11b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:12b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:13b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:14b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:15b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:16b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:17b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:18b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:19b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:20b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:21b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:22b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:23b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:24b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:25b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:26b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:27b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:28b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:29b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:30b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:31b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:32b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:33b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:34b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:35b}]

data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:-106b}]

data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:100b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:101b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:102b}]
data modify storage hygrave:common backups[-1].contents.items append from storage hygrave:common players[-1].pcontents.items.inventory[{Slot:103b}]

## Cancel backup generation if it didn't collect any items
execute unless data storage hygrave:common backups[-1].contents.items[0] run return run data remove storage hygrave:common backups[-1]

## Store BID
execute store result storage hygrave:common backups[-1].data.bid int 1 run scoreboard players add .global hygrave.bid 1

## Creation time (used for show backup info feature)
function hygrave:internal/backup/generate/get_creation_time

## Add backup data to player/backup map
data modify storage hygrave:common players[-1].backups append from storage hygrave:common backups[-1]

## Store owner
data modify storage hygrave:common backups[-1].data.owner set from storage hygrave:common players[-1].player


## Update last_bid variable
scoreboard players operation (last_bid) hygrave.var = .global hygrave.bid
