#<< grave/despawn_time/decrease

## Update status
data modify storage sgrave2:common graves[-1].data.status set value {destroyed:1b,destruction_type:"despawned"}
data modify storage sgrave2:common players[-1].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Drop items
execute if data entity @s item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
function sgrave2:internal/grave/despawn_time/delete_grave/drop_xp

## Delete grave
execute on passengers run kill @s[tag=sgrave2.grave.interaction]
execute on passengers run kill @s[tag=sgrave2.grave.player_head]
execute on passengers run kill @s[tag=sgrave2.grave.text_display]
kill @s