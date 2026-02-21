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

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[1] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_1.text_3.text

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[2] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_2.text_3.text

execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_1{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_1.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_2{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_2.text
execute unless data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_3{type: nothing} run data modify storage hygrave:common temp.args.texts[3] append from storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_3.text_3.text


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

##> Prepare info about item being displayed
data modify storage hygrave:common temp.text_display.icd.item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

data modify storage hygrave:common temp.text_display.icd.item.slot_name set value 'Unknown'

execute if data storage hygrave:common temp.text_display.icd.item{Slot:0b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 1"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:1b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 2"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:2b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 3"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:3b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 4"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:4b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 5"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:5b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 6"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:6b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 7"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:7b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 8"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:8b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Hotbar 9"

execute if data storage hygrave:common temp.text_display.icd.item{Slot:9b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 1"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:10b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 2"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:11b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 3"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:12b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 4"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:13b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 5"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:14b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 6"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:15b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 7"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:16b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 8"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:17b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 9"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:18b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 10"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:19b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 11"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:20b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 12"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:21b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 13"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:22b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 14"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:23b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 15"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:24b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 16"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:25b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 17"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:26b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 18"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:27b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 19"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:28b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 20"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:29b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 21"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:30b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 22"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:31b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 23"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:32b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 24"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:33b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 25"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:34b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 26"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:35b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Inventory 27"

execute if data storage hygrave:common temp.text_display.icd.item{Slot:-106b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Offhand"

execute if data storage hygrave:common temp.text_display.icd.item{Slot:103b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Armor - Head"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:102b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Armor - Chest"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:101b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Armor - Legs"
execute if data storage hygrave:common temp.text_display.icd.item{Slot:100b} run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value "Armor - Boots"

execute unless data storage hygrave:common temp.text_display.icd.item.Slot run data modify storage hygrave:common temp.text_display.icd.item.slot_name set value 'None'


## Update current text display
data modify entity @n[tag=hygrave.temp.grave.text_display] text set from storage hygrave:common temp.args.texts