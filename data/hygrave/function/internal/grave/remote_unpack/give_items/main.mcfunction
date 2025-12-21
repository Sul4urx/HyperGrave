#<< grave/remote_unpack
#<! grave/admin/remote_loot

## Summon temp item (used for manipulating each item stored in grave)
## Call it manipulator item
summon minecraft:item ~ ~32767 ~ {Invulnerable:1b,Tags:["hygrave.temp.item_manipulator"],Item:{id:"minecraft:clock",count:1}}

data modify storage hygrave:common temp.items set from storage hygrave:common graves[-1].contents.items

## Loop through items of grave and give them to the player
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.items[]

execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/remote_unpack/give_items/loop

## Summon items as entity (the items that have been queued to summon as entity instead)
execute if data storage hygrave:common temp.items_to_summon_as_entity[0] run function hygrave:internal/grave/remote_unpack/give_items/drop_rest_of_items

## Get rid of the temp manipulator item
kill @e[tag=hygrave.temp.item_manipulator]
