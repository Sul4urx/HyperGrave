#<< grave/main

# Prepare to show item info

## Prepare text
data modify storage hygrave:common temp.args.icd_text set from storage hygrave:common configs.value.graves.text_display.icd_text

## Select item
data modify storage hygrave:common temp.text_display.icd.item set from entity @s item.components.minecraft:custom_data.hygrave:common.items[0]

## Prepare slot
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
function hygrave:internal/grave/update_text_display/icd/update with storage hygrave:common temp.args