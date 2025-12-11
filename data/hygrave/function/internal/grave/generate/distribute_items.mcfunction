
##> Spawn an item, which is used to check whether
##> an item should be kept, removed or taken.
execute if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0] run summon minecraft:item ~ ~32767 ~ {Item:{id:"minecraft:clock"},Tags:["hygrave.temp.item_distribution_manipulator"]}

##> Apply operations 'keep' and 'remove'
##> Operation 'take' is already applied
execute store result score .loop_count hygrave.temp_var if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[]
execute as @n[tag=hygrave.temp.item_distribution_manipulator] at @s run function hygrave:internal/grave/generate/distribute_items/keep with storage hygrave:common configs

execute store result score .loop_count hygrave.temp_var if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[]
execute as @n[tag=hygrave.temp.item_distribution_manipulator] at @s run function hygrave:internal/grave/generate/distribute_items/remove with storage hygrave:common configs

##> Get rid of the item
kill @e[tag=hygrave.temp.item_distribution_manipulator]