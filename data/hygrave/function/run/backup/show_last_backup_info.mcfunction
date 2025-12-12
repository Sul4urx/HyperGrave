## Store the last BID and show the backup with that BID
execute store result storage hygrave:common temp.args.bid int 1 run scoreboard players get (last_bid) hygrave.var
function hygrave:run/backup/show_backup_info with storage hygrave:common temp.args