#<< grave/ropen
#<! grave/admin/remote_open

## Summon temp item (used for manipulating each item stored in grave)
## Call it manipulator item
summon minecraft:item ~ ~32767 ~ {Invulnerable:1b,Tags:["sgrave2.temp.item_manipulator"],Item:{id:"minecraft:clock",count:1}}

data modify storage sgrave2:common temp.items set from storage sgrave2:common graves[-1].contents.items

## Loop through items of grave and give them to the player
execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common temp.items[]

execute if score .loop_count sgrave2.temp_var matches 1.. run function sgrave2:internal/grave/ropen/give_items/loop

## Summon items as entity (the items that have been queued to summon as entity instead)
execute if data storage sgrave2:common temp.items_to_summon_as_entity[0] run function sgrave2:internal/grave/ropen/give_items/drop_rest_of_items

## Get rid of the temp manipulator item
kill @e[tag=sgrave2.temp.item_manipulator]
