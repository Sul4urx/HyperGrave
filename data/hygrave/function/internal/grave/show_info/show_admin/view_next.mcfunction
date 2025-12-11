#<< grave/show_info/show_admin

## Save GID in `temp.gid` data in storage and in `.gid` temp score
$data modify storage hygrave:common temp.gid set value $(gid)

execute store result score .gid hygrave.temp_var run data get storage hygrave:common temp.gid

## Save GID + 1 in `temp.args1.gid` and add 1 to `.gid` temp score
scoreboard players add .gid hygrave.temp_var 1
execute if score .gid hygrave.temp_var > (last_gid) hygrave.var run scoreboard players operation .gid hygrave.temp_var = (first_gid) hygrave.var
execute store result storage hygrave:common temp.args1.gid int 1 run scoreboard players get .gid hygrave.temp_var

## Prevent infinite loop
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common graves[]

## Add 1 to GID each time
## until the grave with that GID can be shown to player
execute store result score .return_value hygrave.temp_var run function hygrave:internal/grave/show_info/show_admin/view_next/loop with storage hygrave:common temp.args1

execute store result storage hygrave:common temp.args2.gid int 1 run scoreboard players get .return_value hygrave.temp_var

function hygrave:run/grave/admin/show_grave_info with storage hygrave:common temp.args2
