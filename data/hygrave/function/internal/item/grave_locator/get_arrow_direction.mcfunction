## If the player is not in the same dimension as the grave
execute unless score .grave_locator.not_same_dimension hygrave.temp_var matches 0 run return run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§c➖"

## If the player is standing right where the grave is
execute if score .grave_locator.distance hygrave.temp_var matches 0 run return run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§a❌"

## Determine where the arrow should be facing
summon minecraft:marker ~ ~ ~ {data: {"hygrave:common": {grave_angle_checker: {}}}, Tags: ["hygrave.entity.grave_angle_checker"]}

data modify storage hygrave:common temp.mcargs.'helper/teleport_facing'.x set from storage hygrave:common graves[-1].data.pos[0]
data modify storage hygrave:common temp.mcargs.'helper/teleport_facing'.y set from storage hygrave:common graves[-1].data.pos[1]
data modify storage hygrave:common temp.mcargs.'helper/teleport_facing'.z set from storage hygrave:common graves[-1].data.pos[2]

execute as @n[type=minecraft:marker,distance=..1,tag=hygrave.entity.grave_angle_checker] at @s run function hygrave:internal/helper/teleport_facing with storage hygrave:common temp.mcargs.'helper/teleport_facing'

execute store result score .grave_locator.angle_check.facing_grave_rot hygrave.temp_var run data get entity @n[type=minecraft:marker,distance=..1,tag=hygrave.entity.grave_angle_checker] Rotation[0]
execute store result score .grave_locator.angle_check.player_rot hygrave.temp_var run data get entity @s[type=minecraft:player] Rotation[0]

kill @n[type=minecraft:marker,distance=..1,tag=hygrave.entity.grave_angle_checker]

scoreboard players operation .grave_locator.angle_check.drot hygrave.temp_var = .grave_locator.angle_check.player_rot hygrave.temp_var
scoreboard players operation .grave_locator.angle_check.drot hygrave.temp_var -= .grave_locator.angle_check.facing_grave_rot hygrave.temp_var

execute if score .grave_locator.angle_check.drot hygrave.temp_var matches 180.. run scoreboard players remove .grave_locator.angle_check.drot hygrave.temp_var 360
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches ..-181 run scoreboard players add .grave_locator.angle_check.drot hygrave.temp_var 360

execute if score .grave_locator.angle_check.drot hygrave.temp_var matches -15..15 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b▲"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches -75..-16 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b🡽"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches -105..-76 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b▶"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches -165..-106 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b🡾"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches -180..-166 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b▼"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches 166..180 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b▼"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches 106..165 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b🡿"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches 76..105 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b◀"
execute if score .grave_locator.angle_check.drot hygrave.temp_var matches 16..75 run data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§b🡼"


