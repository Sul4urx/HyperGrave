#<! backup/restore_item

## Bring the nessecary elements of maps to last index so that we can work with them

##> Backup
$function sgrave2:internal/map/backups/lookup {bid: $(bid)}

## If backup doesn't exist, throw error
$execute unless data storage sgrave2:common backups[{data:{bid:$(bid)}}] run return run title @s actionbar {\
  "translate": "sgrave2.backup.restore_item.fail.bid_no_exist",\
  "fallback": "§cBackup #%s§c does not exist.",\
  "with": [\
    {\
        "text": "$(bid)",\
        "color": "red"\
    }\
  ]\
}

## Store the backup in a temporary location
data modify storage sgrave2:common temp.backup set from storage sgrave2:common backups[-1]

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}},Tags:["sgrave2.temp.backup.restored_item","sgrave2.backup.restored_item"],Age:-32768s,PickupDelay:60s}

## Set item
$data modify entity @n[tag=sgrave2.temp.backup.restored_item] Item set from storage sgrave2:common temp.backup.contents.items[{Slot:$(slot)b}]

## Set despawn time
scoreboard players set @n[tag=sgrave2.temp.backup.restored_item] sgrave2.despawn_time 20

## Remove item from storage to avoid this item from being restored again
data remove storage sgrave2:common temp.backup.contents.items[0]

## If failed to set item, get rid of the spawned item and throw an error
execute if entity @n[nbt={Item:{components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}}}] run title @s actionbar {\
  "translate": "sgrave2.backup.restore_item.fail.item_no_exist",\
  "fallback": "§cThere is no item in this slot.",\
}
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"sgrave2:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=sgrave2.temp.backup.restored_item] remove sgrave2.temp.backup.restored_item