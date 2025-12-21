#<< grave/remote_unpack/give_items/put_item_in_correct_slot

## Slot number here can only be from 0 to 35, so we can put it using container.* slot name
$item replace entity @p[tag=hygrave.temp.grave.interactor] container.$(Slot) from entity @n[tag=hygrave.temp.item_manipulator] container.0