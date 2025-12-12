#<< backup/show_info/view_next/loop
#<< backup/show_info/view_next

## If loop goes on for about 128 times, break out of loop
execute if score .loop_count hygrave.temp_var matches 0 run return -1

## Save BID in `temp.bid` data in storage and in `.bid` temp score
$data modify storage hygrave:common temp.bid set value $(bid)

execute store result score .bid hygrave.temp_var run data get storage hygrave:common temp.bid

## Save BID + 1 in `temp.args1.bid` and add 1 to `.bid` temp score
scoreboard players add .bid hygrave.temp_var 1
execute if score .bid hygrave.temp_var > (last_bid) hygrave.var run scoreboard players operation .bid hygrave.temp_var = (first_bid) hygrave.var
execute store result storage hygrave:common temp.args1.bid int 1 run scoreboard players get .bid hygrave.temp_var

## Prevent infinite loop
scoreboard players remove .loop_count hygrave.temp_var 1

## Check if the backup with that BID can be shown to player
## If yes, break out of loop and show BID to player
$execute if data storage hygrave:common backups[{data:{bid:$(bid)}}] run return $(bid)

## Add 1 to BID each time
## until the backup with that BID can be shown to player
return run function hygrave:internal/backup/show_info/view_next/loop with storage hygrave:common temp.args1



