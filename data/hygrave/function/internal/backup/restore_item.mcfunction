#<! backup/restore_item

## Bring the nessecary elements of maps to last index so that we can work with them

##> Backup
$function hygrave:internal/map/backups/lookup {bid: $(bid)}

## If backup doesn't exist, throw error
$execute unless data storage hygrave:common backups[{data:{bid:$(bid)}}] run return run title @s actionbar {\
  "translate": "hygrave.backup.restore_item.fail.bid_no_exist",\
  "fallback": "§cBackup #%s§c does not exist.",\
  "with": [\
    {\
        "text": "$(bid)",\
        "color": "red"\
    }\
  ]\
}

## Store the backup in a temporary location
data modify storage hygrave:common temp.backup set from storage hygrave:common backups[-1]

## Spawn item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}},Tags:["hygrave.temp.backup.restored_item","hygrave.backup.restored_item"],Age:-32768s,PickupDelay:60s}

## Set item
$data modify entity @n[tag=hygrave.temp.backup.restored_item] Item set from storage hygrave:common temp.backup.contents.items[{Slot:$(slot)b}]

## Set despawn time
scoreboard players set @n[tag=hygrave.temp.backup.restored_item] hygrave.despawn_time 20

## Remove item from storage to avoid this item from being restored again
data remove storage hygrave:common temp.backup.contents.items[0]

## If failed to set item, get rid of the spawned item and throw an error
execute if entity @n[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}] run title @s actionbar {\
  "translate": "hygrave.backup.restore_item.fail.item_no_exist",\
  "fallback": "§cThere is no item in this slot.",\
}
kill @e[nbt={Item:{components:{"minecraft:custom_data":{"hygrave:common":{temp_item:1b}}}}}]

## Remove temp tag
tag @e[tag=hygrave.temp.backup.restored_item] remove hygrave.temp.backup.restored_item