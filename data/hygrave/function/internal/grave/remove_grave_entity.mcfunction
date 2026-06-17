#@> Executed from:
#@>   function hygrave:internal/grave/pop
#@>   function hygrave:internal/grave/main
#@>   function hygrave:internal/grave/unpack
#@>   function hygrave:internal/grave/despawn_time/delete_grave

## Check if grave exists in database
## If not, skip to ##( Get rid of grave parts )##
data modify storage hygrave:common temp.mcargs.'database/graves/contains_gid'.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid
execute store result score .grave_exists_in_database hygrave.temp_var run function hygrave:internal/database/graves/contains_gid with storage hygrave:common temp.mcargs.'database/graves/contains_gid'

## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
data modify storage hygrave:common temp.mcargs.'database/graves/lookup'.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid
execute if score .grave_exists_in_database hygrave.temp_var matches 1 run function hygrave:internal/database/graves/lookup with storage hygrave:common temp.mcargs.'database/graves/lookup'

## Drop items
execute if score .grave_exists_in_database hygrave.temp_var matches 1 if data storage hygrave:common graves[-1].drop_queued_contents.items[0] run function hygrave:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
execute if score .grave_exists_in_database hygrave.temp_var matches 1 if data storage hygrave:common graves[-1].drop_queued_contents.xp run function hygrave:internal/grave/despawn_time/delete_grave/drop_xp

## Remove unnessecary data
execute if score .grave_exists_in_database hygrave.temp_var matches 1 run data remove storage hygrave:common graves[-1].drop_queued_contents

## Get rid of grave parts
execute on passengers run kill @s[tag=hygrave.grave.interaction]
execute on passengers run kill @s[tag=hygrave.grave.player_head]
execute on passengers run kill @s[tag=hygrave.grave.text_display]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_1]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_2]
execute on passengers run kill @s[tag=hygrave.grave.icd]
kill @s[tag=hygrave.grave.base]