#<< grave/main

# Prepare to show despawn time

## Convert from ticks to seconds, minutes and hours
scoreboard players operation .despawn_time.seconds hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.seconds hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.minutes hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.minutes hygrave.temp_var /= (60) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var


## Prepare text
data modify storage hygrave:common temp.args.text1 set from storage hygrave:common configs.value.graves.text_display.text.text1
data modify storage hygrave:common temp.args.text2 set from storage hygrave:common configs.value.graves.text_display.text.text2

execute if score .despawn_time.hours hygrave.temp_var matches 99.. run data modify storage hygrave:common temp.args.despawn_time_text set from storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.99+_hours
execute if score .despawn_time.hours hygrave.temp_var matches 1..98 run data modify storage hygrave:common temp.args.despawn_time_text set from storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-99_hours
execute if score .despawn_time.hours hygrave.temp_var matches 0 if score .despawn_time.minutes hygrave.temp_var matches 1.. run data modify storage hygrave:common temp.args.despawn_time_text set from storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-59_minutes
execute if score .despawn_time.hours hygrave.temp_var matches 0 if score .despawn_time.minutes hygrave.temp_var matches 0 run data modify storage hygrave:common temp.args.despawn_time_text set from storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.0-59_seconds

## Aliases
data modify storage hygrave:common temp.text_display.owner set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.owner
data modify storage hygrave:common temp.text_display.gid set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.gid

execute store result storage hygrave:common temp.text_display.despawn_time.seconds int 1 run scoreboard players get .despawn_time.seconds hygrave.temp_var
execute store result storage hygrave:common temp.text_display.despawn_time.fseconds int 1 run scoreboard players get @s hygrave.despawn_time
execute store result storage hygrave:common temp.text_display.despawn_time.minutes int 1 run scoreboard players get .despawn_time.minutes hygrave.temp_var
execute store result storage hygrave:common temp.text_display.despawn_time.fminutes int 0.0166666666666666666666 run scoreboard players get @s hygrave.despawn_time
execute store result storage hygrave:common temp.text_display.despawn_time.hours int 1 run scoreboard players get .despawn_time.hours hygrave.temp_var

## Update current text display
function hygrave:internal/grave/update_text_display/update with storage hygrave:common temp.args