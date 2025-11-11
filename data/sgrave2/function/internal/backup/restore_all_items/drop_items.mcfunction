#<< backup/restore

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}},Tags:["sgrave2.temp.backup.restored_item","sgrave2.backup.restored_item"],Age:-32768s,PickupDelay:120s}

## Set item
data modify entity @n[tag=sgrave2.temp.backup.restored_item] Item set from storage sgrave2:common temp.backup.contents.items[0]

## Set despawn time
scoreboard players set @n[tag=sgrave2.temp.backup.restored_item] sgrave2.despawn_time 45

## Remove item from storage to avoid this item from being restored again
data remove storage sgrave2:common temp.backup.contents.items[0]

## If failed to set item, get rid of the spawned item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=sgrave2.temp.backup.restored_item] remove sgrave2.temp.backup.restored_item


## Do all of above for the rest of items of the backup
execute if data storage sgrave2:common temp.backup.contents.items[0] run function sgrave2:internal/backup/restore_all_items/drop_items