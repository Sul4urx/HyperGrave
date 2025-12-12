#<< grave/generate/grave_placement_restrictions

## Get max build height limit value
execute store result score .y_pos hygrave.temp_var run data get entity @s Pos[1]

## If y position of grave > max build height limit of this dimension,
## then set y position to the max build height limit
execute if score .y_pos hygrave.temp_var > .max_height hygrave.temp_var store result storage hygrave:common temp.args.y_pos int 1 run scoreboard players get .max_height hygrave.temp_var
execute if score .y_pos hygrave.temp_var > .max_height hygrave.temp_var as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/teleport with storage hygrave:common temp.args