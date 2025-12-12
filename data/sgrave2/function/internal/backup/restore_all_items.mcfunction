#<! backup/restore_all_items

$function sgrave2:internal/map/backups/lookup {bid: $(bid)}

## If backup doesn't exist, throw error
$execute unless data storage sgrave2:common backups[{data:{bid:$(bid)}}] run return run title @s actionbar {\
  "translate": "sgrave2.backup.restore_all_items.fail.bid_no_exist",\
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

## Drop all items
function sgrave2:internal/backup/restore_all_items/drop_items