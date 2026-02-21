#<< grave/main

## Convert from ticks to seconds, minutes and hours
scoreboard players operation .despawn_time.seconds hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.seconds hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.minutes hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.minutes hygrave.temp_var /= (60) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = @s hygrave.despawn_time
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var


## Prepare text
data modify storage hygrave:common temp.args.texts set value ["", [""], [""], [""]]

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_1.text_3.text

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_2.text_3.text

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_3.text_3.text


execute if score (graves/freeze_grave_despawn_time) hygrave.config matches 1 run data remove storage hygrave:common temp.args.texts[][{with: [{nbt: "temp.text_display.despawn_time.seconds"}]}]


execute if data storage hygrave:common temp.args.texts[1][3] run data modify storage hygrave:common temp.args.texts[1] insert 3 value " "
execute if data storage hygrave:common temp.args.texts[1][2] run data modify storage hygrave:common temp.args.texts[1] insert 2 value " "

execute if data storage hygrave:common temp.args.texts[2][3] run data modify storage hygrave:common temp.args.texts[2] insert 3 value " "
execute if data storage hygrave:common temp.args.texts[2][2] run data modify storage hygrave:common temp.args.texts[2] insert 2 value " "

execute if data storage hygrave:common temp.args.texts[3][3] run data modify storage hygrave:common temp.args.texts[3] insert 3 value " "
execute if data storage hygrave:common temp.args.texts[3][2] run data modify storage hygrave:common temp.args.texts[3] insert 2 value " "


execute unless data storage hygrave:common temp.args.texts[3][1] run data remove storage hygrave:common temp.args.texts[3]
execute unless data storage hygrave:common temp.args.texts[2][1] run data remove storage hygrave:common temp.args.texts[2]
execute unless data storage hygrave:common temp.args.texts[1][1] run data remove storage hygrave:common temp.args.texts[1]


execute if data storage hygrave:common temp.args.texts[2] if data storage hygrave:common temp.args.texts[3] run data modify storage hygrave:common temp.args.texts insert 3 value "\n"
execute if data storage hygrave:common temp.args.texts[1] if data storage hygrave:common temp.args.texts[2] run data modify storage hygrave:common temp.args.texts insert 2 value "\n"

## Aliases
data modify storage hygrave:common temp.text_display.owner set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.owner

data modify storage hygrave:common temp.text_display.gid set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.gid

execute store result storage hygrave:common temp.text_display.despawn_time.seconds int 1 run scoreboard players get .despawn_time.seconds hygrave.temp_var
execute store result storage hygrave:common temp.text_display.despawn_time.fseconds int 1 run scoreboard players get @s hygrave.despawn_time
execute store result storage hygrave:common temp.text_display.despawn_time.minutes int 1 run scoreboard players get .despawn_time.minutes hygrave.temp_var
execute store result storage hygrave:common temp.text_display.despawn_time.fminutes int 0.0166666666666666666666 run scoreboard players get @s hygrave.despawn_time
execute store result storage hygrave:common temp.text_display.despawn_time.hours int 1 run scoreboard players get .despawn_time.hours hygrave.temp_var

execute store result storage hygrave:common temp.text_display.item_count int 1 if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[]

data modify storage hygrave:common temp.text_display.xp set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp

data modify storage hygrave:common temp.text_display.creation_time set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.creation_time

## Update current text display
data modify entity @n[tag=hygrave.temp.grave.text_display] text set from storage hygrave:common temp.args.texts