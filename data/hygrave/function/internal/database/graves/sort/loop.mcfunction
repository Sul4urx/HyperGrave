#@> Executed from:
#@>   function hygrave:internal/database/graves/sort
#@>   function hygrave:internal/database/graves/sort/loop

$data modify storage hygrave:common temp.graves append from storage hygrave:common graves[{data:{gid:$(gid)}}]

scoreboard players add .gid hygrave.temp_var 1
execute store result storage hygrave:common temp.mcargs.'database/graves/sort/loop'.gid int 1 run scoreboard players get .gid hygrave.temp_var

execute if score .gid hygrave.temp_var <= (last_gid) hygrave.var run function hygrave:internal/database/graves/sort/loop with storage hygrave:common temp.mcargs.'database/graves/sort/loop'