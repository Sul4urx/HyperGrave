#@> Executed from:
#@>   function hygrave:internal/grave/annoying_mode/annoy
#@>   function hygrave:internal/grave/annoying_mode/annoy_icd

execute store result score .pos_x hygrave.temp_var run data get entity @s Pos[0]
execute store result score .pos_z hygrave.temp_var run data get entity @s Pos[2]

execute store result score .pos_x_random_modifier hygrave.temp_var run random value -16..16
execute store result score .pos_z_random_modifier hygrave.temp_var run random value -16..16

scoreboard players operation .pos_x hygrave.temp_var += .pos_x_random_modifier hygrave.temp_var
scoreboard players operation .pos_z hygrave.temp_var += .pos_z_random_modifier hygrave.temp_var

execute store result storage hygrave:common temp.mcargs.'helper/teleport'.x int 1 run scoreboard players get .pos_x hygrave.temp_var
execute store result storage hygrave:common temp.mcargs.'helper/teleport'.y int 1 run data get entity @s Pos[1]
execute store result storage hygrave:common temp.mcargs.'helper/teleport'.z int 1 run scoreboard players get .pos_z hygrave.temp_var

execute as @s on passengers run tag @s add hygrave.temp.grave.part
execute as @s[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/helper/teleport with storage hygrave:common temp.mcargs.'helper/teleport'
execute as @n[tag=hygrave.temp.grave.interaction] at @s run data remove entity @s interaction
execute as @n[tag=hygrave.temp.grave.interaction] at @s run data remove entity @s attack
execute as @e[tag=hygrave.temp.grave.part] at @s run ride @s mount @n[tag=hygrave.temp.grave.base]
tag @e[tag=hygrave.temp.grave.part] remove hygrave.temp.grave.part
