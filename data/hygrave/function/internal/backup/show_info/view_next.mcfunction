#<< backup/show_info

## Save BID in `temp.bid` data in storage and in `.bid` temp score
$data modify storage hygrave:common temp.bid set value $(bid)

execute store result score .bid hygrave.temp_var run data get storage hygrave:common temp.bid

## Save BID + 1 in `temp.args1.bid` and add 1 to `.bid` temp score
scoreboard players add .bid hygrave.temp_var 1
execute if score .bid hygrave.temp_var > (last_bid) hygrave.var run scoreboard players operation .bid hygrave.temp_var = (first_bid) hygrave.var
execute store result storage hygrave:common temp.args1.bid int 1 run scoreboard players get .bid hygrave.temp_var

## Prevent infinite loop
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common backups[]

## Add 1 to BID each time
## until the backup with that BID can be shown to player
execute store result score .return_value hygrave.temp_var run function hygrave:internal/backup/show_info/view_next/loop with storage hygrave:common temp.args1

execute store result storage hygrave:common temp.args2.bid int 1 run scoreboard players get .return_value hygrave.temp_var

function hygrave:run/backup/show_backup_info with storage hygrave:common temp.args2
