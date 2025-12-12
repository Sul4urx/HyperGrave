#<< grave/show_info/show_admin

## Save GID in `temp.gid` data in storage and in `.gid` temp score
$data modify storage sgrave2:common temp.gid set value $(gid)

execute store result score .gid sgrave2.temp_var run data get storage sgrave2:common temp.gid

## Save GID - 1 in `temp.args1.gid` and remove 1 from `.gid` temp score
scoreboard players remove .gid sgrave2.temp_var 1
execute if score .gid sgrave2.temp_var < (first_gid) sgrave2.var run scoreboard players operation .gid sgrave2.temp_var = (last_gid) sgrave2.var
execute store result storage sgrave2:common temp.args1.gid int 1 run scoreboard players get .gid sgrave2.temp_var

## Prevent infinite loop
execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common graves[]

## Remove 1 from GID each time
## until the grave with that GID can be shown to player
execute store result score .return_value sgrave2.temp_var run function sgrave2:internal/grave/show_info/show_admin/view_previous/loop with storage sgrave2:common temp.args1

execute store result storage sgrave2:common temp.args2.gid int 1 run scoreboard players get .return_value sgrave2.temp_var

function sgrave2:run/grave/admin/show_grave_info with storage sgrave2:common temp.args2
