#<< grave/remote_unpack/give_items/loop

## Set .slot_is_full to true if the player already has item in that slot
$execute store success score .slot_is_full hygrave.temp_var if data entity @p[tag=hygrave.temp.grave.interactor] Inventory[{Slot:$(Slot)b}]
execute if score .slot hygrave.temp_var matches -106 if data entity @p[tag=hygrave.temp.grave.interactor] equipment.offhand run scoreboard players set .slot_is_full hygrave.temp_var 1
execute if score .slot hygrave.temp_var matches 103 if data entity @p[tag=hygrave.temp.grave.interactor] equipment.head run scoreboard players set .slot_is_full hygrave.temp_var 1
execute if score .slot hygrave.temp_var matches 102 if data entity @p[tag=hygrave.temp.grave.interactor] equipment.chest run scoreboard players set .slot_is_full hygrave.temp_var 1
execute if score .slot hygrave.temp_var matches 101 if data entity @p[tag=hygrave.temp.grave.interactor] equipment.legs run scoreboard players set .slot_is_full hygrave.temp_var 1
execute if score .slot hygrave.temp_var matches 100 if data entity @p[tag=hygrave.temp.grave.interactor] equipment.feet run scoreboard players set .slot_is_full hygrave.temp_var 1

## If slot number is from 0 to 35 (hotbar and inventory, not armor or offhand)
$execute if score .slot hygrave.temp_var matches 0..35 unless data entity @p[tag=hygrave.temp.grave.interactor] Inventory[{Slot:$(Slot)b}] run return run function hygrave:internal/grave/remote_unpack/give_items/put_item_in_correct_slot/0to35 {Slot:$(Slot)b}

## If slot number is -106 (offhand)
execute if score .slot hygrave.temp_var matches -106 unless data entity @p[tag=hygrave.temp.grave.interactor] equipment.offhand run item replace entity @p[tag=hygrave.temp.grave.interactor] weapon.offhand from entity @n[tag=hygrave.temp.item_manipulator] container.0

## If slot number is from 100 to 103 (armor)
execute if score .slot hygrave.temp_var matches 103 unless data entity @p[tag=hygrave.temp.grave.interactor] equipment.head run item replace entity @p[tag=hygrave.temp.grave.interactor] armor.head from entity @n[tag=hygrave.temp.item_manipulator] container.0
execute if score .slot hygrave.temp_var matches 102 unless data entity @p[tag=hygrave.temp.grave.interactor] equipment.chest run item replace entity @p[tag=hygrave.temp.grave.interactor] armor.chest from entity @n[tag=hygrave.temp.item_manipulator] container.0
execute if score .slot hygrave.temp_var matches 101 unless data entity @p[tag=hygrave.temp.grave.interactor] equipment.legs run item replace entity @p[tag=hygrave.temp.grave.interactor] armor.legs from entity @n[tag=hygrave.temp.item_manipulator] container.0
execute if score .slot hygrave.temp_var matches 100 unless data entity @p[tag=hygrave.temp.grave.interactor] equipment.feet run item replace entity @p[tag=hygrave.temp.grave.interactor] armor.feet from entity @n[tag=hygrave.temp.item_manipulator] container.0