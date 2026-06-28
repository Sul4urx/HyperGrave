## Sort all graves

execute unless data storage hygrave:common graves[0] run return -1
data modify storage hygrave:common temp.graves set value []

scoreboard players operation .gid hygrave.temp_var = (first_gid) hygrave.var
execute store result storage hygrave:common temp.mcargs.'database/graves/sort/loop'.gid int 1 run scoreboard players get .gid hygrave.temp_var

function hygrave:internal/database/graves/sort/loop with storage hygrave:common temp.mcargs.'database/graves/sort/loop'

data modify storage hygrave:common graves set from storage hygrave:common temp.graves