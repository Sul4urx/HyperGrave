#@> Executed from:
#@>   function hygrave:internal/grave/despawn_time/decrease

## Drop items
execute if score (graves/drop_contents_on_despawn) hygrave.config matches 1 if data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
execute if score (graves/drop_contents_on_despawn) hygrave.config matches 1 run function hygrave:internal/grave/despawn_time/delete_grave/drop_xp

## Delete grave
data modify storage hygrave:common temp.mcargs.'database/graves/delete'.destruction_type set value "despawned"
data modify storage hygrave:common temp.mcargs.'database/graves/delete'.destroyer set value {}

function hygrave:internal/database/graves/delete with storage hygrave:common temp.mcargs.'database/graves/delete'

## Remove grave entity
function hygrave:internal/grave/remove_grave_entity