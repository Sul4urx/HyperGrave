## Store the last BID and show the backup with that BID
execute store result storage sgrave2:common temp.args.bid int 1 run scoreboard players get (last_bid) sgrave2.var
function sgrave2:run/backup/show_backup_info with storage sgrave2:common temp.args