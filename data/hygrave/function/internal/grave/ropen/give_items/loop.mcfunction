#<< grave/ropen/give_items/main

## Store the slot of the item in a score
scoreboard players set .slot hygrave.temp_var -32768
execute if data storage hygrave:common temp.items[-1].Slot store result score .slot hygrave.temp_var run data get storage hygrave:common temp.items[-1].Slot 1

## Remove the slot data temporarily so that manipulator item can do its job 
data remove storage hygrave:common temp.items[-1].Slot

## Make manipulator item manipulate the item
data modify entity @n[tag=hygrave.temp.item_manipulator] Item set from storage hygrave:common temp.items[-1]

## Add the slot data back
execute unless score .slot hygrave.temp_var matches -32768 store result storage hygrave:common temp.items[-1].Slot int 1 run scoreboard players get .slot hygrave.temp_var

## Put item in correct slot of player's inventory
execute unless score .slot hygrave.temp_var matches -32768 run function hygrave:internal/grave/ropen/give_items/put_item_in_correct_slot/main with storage hygrave:common temp.items[-1]

## If the slot in player's inventory is full,
## queue the item to be summoned as entity instead
execute if score .slot_is_full hygrave.temp_var matches 1 run data modify storage hygrave:common temp.items_to_summon_as_entity append from storage hygrave:common temp.items[-1]
execute if score .slot hygrave.temp_var matches -32768 run data modify storage hygrave:common temp.items_to_summon_as_entity append from storage hygrave:common temp.items[-1]

## Set .slot_is_full to false, so that it doesn't somehow 
## remain true for the next iteration and break stuff
scoreboard players set .slot_is_full hygrave.temp_var 0

## Remove the item from the grave
data remove storage hygrave:common temp.items[-1]

## Do all of the above for the next item of the grave
scoreboard players remove .loop_count hygrave.temp_var 1
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/ropen/give_items/loop