#<< backup/restore

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}},Tags:["hygrave.temp.backup.restored_item","hygrave.backup.restored_item"],Age:-32768s,PickupDelay:120s}

## Set item
data modify entity @n[tag=hygrave.temp.backup.restored_item] Item set from storage hygrave:common temp.backup.contents.items[0]

## Set despawn time
scoreboard players set @n[tag=hygrave.temp.backup.restored_item] hygrave.despawn_time 45

## Remove item from storage to avoid this item from being restored again
data remove storage hygrave:common temp.backup.contents.items[0]

## If failed to set item, get rid of the spawned item
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=hygrave.temp.backup.restored_item] remove hygrave.temp.backup.restored_item


## Do all of above for the rest of items of the backup
execute if data storage hygrave:common temp.backup.contents.items[0] run function hygrave:internal/backup/restore_all_items/drop_items