#@> Executed from:
#@>   function hygrave:internal/grave/despawn_time/decrease

## Drop items
execute if data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
function hygrave:internal/grave/despawn_time/delete_grave/drop_xp

## Delete grave
data modify storage hygrave:common temp.args.destruction_type set value "unpacked"
data modify storage hygrave:common temp.args.destroyer set from storage hygrave:common players[{temp:{interactor:1b}}].player

function hygrave:internal/database/graves/delete with storage hygrave:common temp.args

## Remove grave entity
function hygrave:internal/grave/remove_grave_entity