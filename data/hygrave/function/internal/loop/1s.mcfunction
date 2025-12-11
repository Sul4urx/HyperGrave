#<< load
#<< loop/1s

## Schedule function to run again
schedule function hygrave:internal/loop/1s 1s

## Decrease despawn time of graves and
## items and xp orbs dropped from graves
execute as @e[tag=hygrave.grave.base] at @s run function hygrave:internal/grave/despawn_time/decrease

execute as @e[tag=hygrave.grave.item] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease
execute as @e[tag=hygrave.grave.xp] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease

execute as @e[tag=hygrave.backup.restored_item] at @s run function hygrave:internal/backup/dropped_contents/despawn_time/decrease