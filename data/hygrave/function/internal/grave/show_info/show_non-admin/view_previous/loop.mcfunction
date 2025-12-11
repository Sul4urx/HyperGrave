#<< grave/show_info/show_non-admin/view_previous/loop
#<< grave/show_info/show_non-admin/view_previous

## If loop goes on for about 128 times, break out of loop
execute if score .loop_count hygrave.temp_var matches 0 run return -1

## Save GID in `temp.gid` data in storage and in `.gid` temp score
$data modify storage hygrave:common temp.gid set value $(gid)

execute store result score .gid hygrave.temp_var run data get storage hygrave:common temp.gid

## Save GID - 1 in `temp.args1.gid` and remove 1 from `.gid` temp score
scoreboard players remove .gid hygrave.temp_var 1
execute if score .gid hygrave.temp_var < (first_gid) hygrave.var run scoreboard players operation .gid hygrave.temp_var = (last_gid) hygrave.var
execute store result storage hygrave:common temp.args1.gid int 1 run scoreboard players get .gid hygrave.temp_var

## Prevent infinite loop
scoreboard players remove .loop_count hygrave.temp_var 1

## Check if the grave with that GID can be shown to player
## If yes, break out of loop and show GID to player
$execute if data storage hygrave:common graves[{data:{gid:$(gid)}}] if data storage hygrave:common graves[{data:{gid:$(gid),status:{destroyed:1b}}}] if data storage hygrave:common graves[{data:{gid:$(gid),owner:{pid:$(pid)}}}] if score (graves/show_grave_info/bo) hygrave.config matches 1 run return $(gid)

$execute if data storage hygrave:common graves[{data:{gid:$(gid)}}] if data storage hygrave:common graves[{data:{gid:$(gid),status:{destroyed:1b}}}] unless data storage hygrave:common graves[{data:{gid:$(gid),owner:{pid:$(pid)}}}] if score (graves/show_grave_info/bn) hygrave.config matches 1 run return $(gid)

$execute if data storage hygrave:common graves[{data:{gid:$(gid)}}] unless data storage hygrave:common graves[{data:{gid:$(gid),status:{destroyed:1b}}}] if data storage hygrave:common graves[{data:{gid:$(gid),owner:{pid:$(pid)}}}] if score (graves/show_grave_info/ao) hygrave.config matches 1 run return $(gid)

$execute if data storage hygrave:common graves[{data:{gid:$(gid)}}] unless data storage hygrave:common graves[{data:{gid:$(gid),status:{destroyed:1b}}}] unless data storage hygrave:common graves[{data:{gid:$(gid),owner:{pid:$(pid)}}}] if score (graves/show_grave_info/an) hygrave.config matches 1 run return $(gid)

## Remove 1 from GID each time
## until the grave with that GID can be shown to player
return run function hygrave:internal/grave/show_info/show_non-admin/view_previous/loop with storage hygrave:common temp.args1



