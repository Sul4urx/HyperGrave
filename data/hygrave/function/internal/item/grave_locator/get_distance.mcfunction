## Set distance to 0 if the player is not in the same dimension as the grave
execute unless score .grave_locator.not_same_dimension hygrave.temp_var matches 0 run return run scoreboard players set .grave_locator.distance hygrave.temp_var 0

## Determine approximate distance
execute store result score .grave_locator.distance.player.x hygrave.temp_var run data get entity @s Pos[0]
execute store result score .grave_locator.distance.player.z hygrave.temp_var run data get entity @s Pos[2]

execute store result score .grave_locator.distance.grave.x hygrave.temp_var run data get storage hygrave:common graves[-1].data.pos[0]
execute store result score .grave_locator.distance.grave.z hygrave.temp_var run data get storage hygrave:common graves[-1].data.pos[2]


scoreboard players operation .grave_locator.distance.dx hygrave.temp_var = .grave_locator.distance.grave.x hygrave.temp_var
scoreboard players operation .grave_locator.distance.dx hygrave.temp_var -= .grave_locator.distance.player.x hygrave.temp_var
execute if score .grave_locator.distance.dx hygrave.temp_var matches ..-1 run scoreboard players operation .grave_locator.distance.dx hygrave.temp_var *= (-1) hygrave.var 

scoreboard players operation .grave_locator.distance.dz hygrave.temp_var = .grave_locator.distance.grave.z hygrave.temp_var
scoreboard players operation .grave_locator.distance.dz hygrave.temp_var -= .grave_locator.distance.player.z hygrave.temp_var
execute if score .grave_locator.distance.dz hygrave.temp_var matches ..-1 run scoreboard players operation .grave_locator.distance.dz hygrave.temp_var *= (-1) hygrave.var


scoreboard players set .grave_locator.distance hygrave.temp_var 0
scoreboard players operation .grave_locator.distance hygrave.temp_var += .grave_locator.distance.dx hygrave.temp_var
scoreboard players operation .grave_locator.distance hygrave.temp_var += .grave_locator.distance.dz hygrave.temp_var
execute if score .grave_locator.distance.dx hygrave.temp_var > .grave_locator.distance.dz hygrave.temp_var run scoreboard players operation .grave_locator.distance hygrave.temp_var += .grave_locator.distance.dx hygrave.temp_var
execute unless score .grave_locator.distance.dx hygrave.temp_var > .grave_locator.distance.dz hygrave.temp_var run scoreboard players operation .grave_locator.distance hygrave.temp_var += .grave_locator.distance.dz hygrave.temp_var
scoreboard players operation .grave_locator.distance hygrave.temp_var /= (2) hygrave.var

execute store result storage hygrave:common temp.grave_locator.distance int 1 run scoreboard players get .grave_locator.distance hygrave.temp_var
