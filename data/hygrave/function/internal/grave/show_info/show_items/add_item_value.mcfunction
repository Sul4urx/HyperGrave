#<< grave/show_info/show_items

# Define an item for this slot

## If the grave stores nothing inside the slot, cancel operation
$execute unless data storage hygrave:common graves[-1].data.items[{Slot:$(slot_number)b}] run return -1

## Manipulate item stored in the slot
$data modify entity @n[tag=hygrave.temp.grave_info_item_manipulator] Item set from storage hygrave:common graves[-1].data.items[{Slot:$(slot_number)b}]

## Mark the square representing the item and add a tooltip for the item
data modify storage hygrave:common temp.args1 set from entity @n[tag=hygrave.temp.grave_info_item_manipulator] Item
$data modify storage hygrave:common temp.args1.slot_id set value "$(slot_id)"
$data modify storage hygrave:common temp.args1.slot_text set value "$(slot_text)"
$data modify storage hygrave:common temp.args1.slot_number set value $(slot_number)

execute as @n[tag=hygrave.temp.grave_info_item_manipulator] at @s run function hygrave:internal/grave/show_info/show_items/change_text_to_show_value with storage hygrave:common temp.args1