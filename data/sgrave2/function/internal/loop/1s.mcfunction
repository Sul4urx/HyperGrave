#<< load
#<< loop/1s

## Schedule function to run again
schedule function sgrave2:internal/loop/1s 1s

## Decrease despawn time of graves and
## items and xp orbs dropped from graves
execute as @e[tag=sgrave2.grave.base] at @s run function sgrave2:internal/grave/despawn_time/decrease

execute as @e[tag=sgrave2.grave.item] at @s run function sgrave2:internal/grave/dropped_contents/despawn_time/decrease
execute as @e[tag=sgrave2.grave.xp] at @s run function sgrave2:internal/grave/dropped_contents/despawn_time/decrease

execute as @e[tag=sgrave2.backup.restored_item] at @s run function sgrave2:internal/backup/dropped_contents/despawn_time/decrease