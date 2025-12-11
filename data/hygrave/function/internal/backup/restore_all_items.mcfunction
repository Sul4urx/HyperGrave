#<! backup/restore_all_items

## Bring the nessecary elements of maps to last index so that we can work with them

##> Backup
$function hygrave:internal/map/backups/lookup {bid: $(bid)}

## If backup doesn't exist, throw error
$execute unless data storage hygrave:common backups[{data:{bid:$(bid)}}] run return run title @s actionbar {\
  "translate": "hygrave.backup.restore_all_items.fail.bid_no_exist",\
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

## Drop all items
function hygrave:internal/backup/restore_all_items/drop_items