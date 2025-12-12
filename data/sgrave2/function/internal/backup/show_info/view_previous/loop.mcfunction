#<< backup/show_info/view_previous/loop
#<< backup/show_info/view_previous

## If loop goes on for about 128 times, break out of loop
execute if score .loop_count sgrave2.temp_var matches 0 run return -1

## Save BID in `temp.bid` data in storage and in `.bid` temp score
$data modify storage sgrave2:common temp.bid set value $(bid)

execute store result score .bid sgrave2.temp_var run data get storage sgrave2:common temp.bid

## Save BID - 1 in `temp.args1.bid` and remove 1 from `.bid` temp score
scoreboard players remove .bid sgrave2.temp_var 1
execute if score .bid sgrave2.temp_var < (first_bid) sgrave2.var run scoreboard players operation .bid sgrave2.temp_var = (last_bid) sgrave2.var
execute store result storage sgrave2:common temp.args1.bid int 1 run scoreboard players get .bid sgrave2.temp_var

## Prevent infinite loop
scoreboard players remove .loop_count sgrave2.temp_var 1

## Check if the backup with that BID can be shown to player
## If yes, break out of loop and show BID to player
$execute if data storage sgrave2:common backups[{data:{bid:$(bid)}}] run return $(bid)

## Remove 1 from BID each time
## until the backup with that BID can be shown to player
return run function sgrave2:internal/backup/show_info/view_previous/loop with storage sgrave2:common temp.args1



