#<< event/player/player_died

## Bring the nessecary elements of maps to last index so that we can work with them

##> Player
execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @s sgrave2.pid 
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args

## Add backup data
data modify storage sgrave2:common backups append value {}

## Copy the item data from the player and paste it to the grave
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:0b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:1b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:2b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:3b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:4b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:5b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:6b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:7b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:8b}]

data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:9b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:10b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:11b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:12b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:13b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:14b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:15b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:16b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:17b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:18b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:19b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:20b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:21b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:22b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:23b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:24b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:25b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:26b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:27b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:28b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:29b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:30b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:31b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:32b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:33b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:34b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:35b}]

data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:-106b}]

data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:100b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:101b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:102b}]
data modify storage sgrave2:common backups[-1].contents.items append from storage sgrave2:common players[-1].pcontents.items.inventory[{Slot:103b}]

## Cancel backup generation if it didn't collect any items
execute unless data storage sgrave2:common backups[-1].contents.items[0] run return run data remove storage sgrave2:common backups[-1]

## Store BID
execute store result storage sgrave2:common backups[-1].data.bid int 1 run scoreboard players add .global sgrave2.bid 1

## Creation time (used for show backup info feature)
function sgrave2:internal/backup/generate/get_creation_time

## Add backup data to player/backup map
data modify storage sgrave2:common players[-1].backups append from storage sgrave2:common backups[-1]

## Store owner
data modify storage sgrave2:common backups[-1].data.owner set from storage sgrave2:common players[-1].player


## Update last_bid variable
scoreboard players operation (last_bid) sgrave2.var = .global sgrave2.bid
