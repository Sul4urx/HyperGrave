
##> Spawn an item, which is used to check whether
##> an item should be kept, removed or taken.
execute if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock"},Tags:["sgrave2.temp.item_distribution_manipulator"]}

##> Apply operations 'keep' and 'remove'
##> Operation 'take' is already applied
execute store result score .loop_count sgrave2.temp_var if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[]
execute as @n[tag=sgrave2.temp.item_distribution_manipulator] at @s run function sgrave2:internal/grave/generate/distribute_items/keep with storage sgrave2:common configs

execute store result score .loop_count sgrave2.temp_var if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[]
execute as @n[tag=sgrave2.temp.item_distribution_manipulator] at @s run function sgrave2:internal/grave/generate/distribute_items/remove with storage sgrave2:common configs

##> Get rid of the item
kill @e[tag=sgrave2.temp.item_distribution_manipulator]