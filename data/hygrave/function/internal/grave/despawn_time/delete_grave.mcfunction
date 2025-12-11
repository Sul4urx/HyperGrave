#<< grave/despawn_time/decrease

## Update status
data modify storage hygrave:common graves[-1].data.status set value {destroyed:1b,destruction_type:"despawned"}
data modify storage hygrave:common players[-1].graves[-1].data.status set from storage hygrave:common graves[-1].data.status

## Drop items
execute if data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
function hygrave:internal/grave/despawn_time/delete_grave/drop_xp

## Delete grave
execute on passengers run kill @s[tag=hygrave.grave.interaction]
execute on passengers run kill @s[tag=hygrave.grave.player_head]
execute on passengers run kill @s[tag=hygrave.grave.text_display]
execute on passengers run kill @s[tag=hygrave.grave.icd]
kill @s