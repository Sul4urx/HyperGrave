#<< event/player/player_died

## Bring the nessecary elements of maps to last index so that we can work with them

##> Player
execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @s sgrave2.pid 
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args

## Add backup data
data modify storage sgrave2:common backups append value {}

## For players, the offhand and armor slots are
## stored in a compound, not an array

## That also means they don't have a `Slot` tag
## So we have to add them ourselves
data modify storage sgrave2:common backups[-1].contents.items set value [\
  {Slot: -106b, id: 0},\
  {Slot: 103b, id: 0},\
  {Slot: 102b, id: 0},\
  {Slot: 101b, id: 0},\
  {Slot: 100b, id: 0}\
]

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

##> Careful! the `equipment` data doesn't have a `Slot` field
data modify storage sgrave2:common backups[-1].contents.items[{Slot:-106b}].id set from storage sgrave2:common players[-1].pcontents.items.equipment.offhand.id
data modify storage sgrave2:common backups[-1].contents.items[{Slot:-106b}].count set from storage sgrave2:common players[-1].pcontents.items.equipment.offhand.count
data modify storage sgrave2:common backups[-1].contents.items[{Slot:-106b}].components set from storage sgrave2:common players[-1].pcontents.items.equipment.offhand.components

data modify storage sgrave2:common backups[-1].contents.items[{Slot:103b}].id set from storage sgrave2:common players[-1].pcontents.items.equipment.head.id
data modify storage sgrave2:common backups[-1].contents.items[{Slot:103b}].count set from storage sgrave2:common players[-1].pcontents.items.equipment.head.count
data modify storage sgrave2:common backups[-1].contents.items[{Slot:103b}].components set from storage sgrave2:common players[-1].pcontents.items.equipment.head.components

data modify storage sgrave2:common backups[-1].contents.items[{Slot:102b}].id set from storage sgrave2:common players[-1].pcontents.items.equipment.chest.id
data modify storage sgrave2:common backups[-1].contents.items[{Slot:102b}].count set from storage sgrave2:common players[-1].pcontents.items.equipment.chest.count
data modify storage sgrave2:common backups[-1].contents.items[{Slot:102b}].components set from storage sgrave2:common players[-1].pcontents.items.equipment.chest.components

data modify storage sgrave2:common backups[-1].contents.items[{Slot:101b}].id set from storage sgrave2:common players[-1].pcontents.items.equipment.legs.id
data modify storage sgrave2:common backups[-1].contents.items[{Slot:101b}].count set from storage sgrave2:common players[-1].pcontents.items.equipment.legs.count
data modify storage sgrave2:common backups[-1].contents.items[{Slot:101b}].components set from storage sgrave2:common players[-1].pcontents.items.equipment.legs.components

data modify storage sgrave2:common backups[-1].contents.items[{Slot:100b}].id set from storage sgrave2:common players[-1].pcontents.items.equipment.feet.id
data modify storage sgrave2:common backups[-1].contents.items[{Slot:100b}].count set from storage sgrave2:common players[-1].pcontents.items.equipment.feet.count
data modify storage sgrave2:common backups[-1].contents.items[{Slot:100b}].components set from storage sgrave2:common players[-1].pcontents.items.equipment.feet.components

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
