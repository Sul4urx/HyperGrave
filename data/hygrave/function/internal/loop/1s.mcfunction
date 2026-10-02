#@> Executed from:
#@>   function hygrave:internal/loop/1s
#@>   function hygrave:internal/versioning/upgrade/*
#@>   function hygrave:internal/versioning/downgrade
#@>   function hygrave:internal/load

## Schedule function to run again
schedule function hygrave:internal/loop/1s 1s

## Decrease despawn time of graves and
## items and xp orbs dropped from graves
execute unless score (graves/freeze_grave_despawn_time) hygrave.config matches 1 as @e[tag=hygrave.grave.base] at @s run function hygrave:internal/grave/despawn_time/decrease

execute unless score (dropped_contents/freeze_item_despawn_time) hygrave.config matches 1 as @e[tag=hygrave.grave.item] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease
execute unless score (dropped_contents/freeze_xp_despawn_time) hygrave.config matches 1 as @e[tag=hygrave.grave.xp] at @s run function hygrave:internal/grave/dropped_contents/despawn_time/decrease

execute as @e[tag=hygrave.backup.restored_item] at @s run function hygrave:internal/backup/dropped_contents/despawn_time/decrease

## Revoke advancements if they somehow didn't get revoked
advancement revoke @a only hygrave:grave_locator/tick/mainhand
advancement revoke @a only hygrave:grave_locator/tick/offhand
advancement revoke @a only hygrave:grave_locator/used