#<< grave/ropen/give_items/main

## Store the slot of the item in a score
scoreboard players set .slot sgrave2.temp_var -32768
execute if data storage sgrave2:common temp.items[-1].Slot store result score .slot sgrave2.temp_var run data get storage sgrave2:common temp.items[-1].Slot 1

## Remove the slot data temporarily so that manipulator item can do its job 
data remove storage sgrave2:common temp.items[-1].Slot

## Make manipulator item manipulate the item
item replace entity @n[tag=sgrave2.temp.item_manipulator] contents with minecraft:clock[minecraft:item_name='"§cBug Item"',minecraft:lore=['"You\'re not supposed to have this item. If you do, please report this bug."']]
data modify entity @n[tag=sgrave2.temp.item_manipulator] Item set from storage sgrave2:common temp.items[-1]

## Add the slot data back
execute unless score .slot sgrave2.temp_var matches -32768 store result storage sgrave2:common temp.items[-1].Slot int 1 run scoreboard players get .slot sgrave2.temp_var

## Put item in correct slot of player's inventory
execute unless score .slot sgrave2.temp_var matches -32768 run function sgrave2:internal/grave/ropen/give_items/put_item_in_correct_slot/main with storage sgrave2:common temp.items[-1]

## If the slot in player's inventory is full,
## queue the item to be summoned as entity instead
execute if score .slot_is_full sgrave2.temp_var matches 1 run data modify storage sgrave2:common temp.items_to_summon_as_entity append from storage sgrave2:common temp.items[-1]
execute if score .slot sgrave2.temp_var matches -32768 run data modify storage sgrave2:common temp.items_to_summon_as_entity append from storage sgrave2:common temp.items[-1]

## Set .slot_is_full to false, so that it doesn't somehow 
## remain true for the next iteration and break stuff
scoreboard players set .slot_is_full sgrave2.temp_var 0

## Remove the item from the grave
data remove storage sgrave2:common temp.items[-1]

## Do all of the above for the next item of the grave
scoreboard players remove .loop_count sgrave2.temp_var 1
execute if score .loop_count sgrave2.temp_var matches 1.. run function sgrave2:internal/grave/ropen/give_items/loop