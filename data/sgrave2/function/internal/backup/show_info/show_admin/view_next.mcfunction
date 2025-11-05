#<< backup/show_info/show_admin

## Save BID in `temp.bid` data in storage and in `.bid` temp score
$data modify storage sgrave2:common temp.bid set value $(bid)

execute store result score .bid sgrave2.temp_var run data get storage sgrave2:common temp.bid

## Save BID + 1 in `temp.args1.bid` and add 1 to `.bid` temp score
scoreboard players add .bid sgrave2.temp_var 1
execute if score .bid sgrave2.temp_var > (last_bid) sgrave2.var run scoreboard players operation .bid sgrave2.temp_var = (first_bid) sgrave2.var
execute store result storage sgrave2:common temp.args1.bid int 1 run scoreboard players get .bid sgrave2.temp_var

## Prevent infinite loop
execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common backups[]

## Add 1 to BID each time
## until the backup with that BID can be shown to player
execute store result score .return_value sgrave2.temp_var run function sgrave2:internal/backup/show_info/show_admin/view_next/loop with storage sgrave2:common temp.args1

execute store result storage sgrave2:common temp.args2.bid int 1 run scoreboard players get .return_value sgrave2.temp_var

function sgrave2:run/backup/show_backup_info with storage sgrave2:common temp.args2
