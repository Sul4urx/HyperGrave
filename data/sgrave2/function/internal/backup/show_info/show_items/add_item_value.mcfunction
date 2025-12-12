#<< backup/show_info/show_items

# Define an item for this slot

## If the backup stores nothing inside the slot, cancel operation
$execute unless data storage sgrave2:common backups[-1].contents.items[{Slot:$(slot_number)b}] run return -1

## Manipulate item stored in the slot
$data modify entity @n[tag=sgrave2.temp.backup_info_item_manipulator] Item set from storage sgrave2:common backups[-1].contents.items[{Slot:$(slot_number)b}]

## Mark the square representing the item and add a tooltip for the item
data modify storage sgrave2:common temp.args1 set from entity @n[tag=sgrave2.temp.backup_info_item_manipulator] Item
$data modify storage sgrave2:common temp.args1.slot_id set value "$(slot_id)"
$data modify storage sgrave2:common temp.args1.slot_text set value "$(slot_text)"
$data modify storage sgrave2:common temp.args1.slot_number set value $(slot_number)
data modify storage sgrave2:common temp.args1.bid set from storage sgrave2:common backups[-1].data.bid

execute as @n[tag=sgrave2.temp.backup_info_item_manipulator] at @s run function sgrave2:internal/backup/show_info/show_items/change_text_to_show_value with storage sgrave2:common temp.args1