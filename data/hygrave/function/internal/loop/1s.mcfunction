#<< load
#<< loop/1s

## Schedule function to run again
schedule function hygrave:internal/loop/1s 1s

## Decrease despawn time of graves and
## items and xp orbs dropped from graves
execute unless score (graves/freeze_grave_despawn_time) hygrave.config matches 1 as @e[tag=hygrave.grave.base] at @s run function hygrave:internal/grave/despawn_time/decrease

execute unless score (dropped_contents/freeze_item_despawn_time) hygrave.config matches 1 as @e[tag=hygrave.grave.item] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease
execute as @e[tag=hygrave.grave.xp] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease

execute as @e[tag=hygrave.backup.restored_item] at @s run function hygrave:internal/backup/dropped_contents/despawn_time/decrease