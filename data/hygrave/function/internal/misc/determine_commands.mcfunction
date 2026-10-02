#@> Executed from:
#@>   hygrave:internal/load

## Determine command versions

##> Determine which commands should be used to query day count and day time:
##> '/time of minecraft:overworld query minecraft:day [repetition]' (1) (Minecraft 26.1+)
##> or '/time query day[time]' (0) (Minecraft pre-26.1)
execute store result score (command_version/time) hygrave.var run function hygrave:internal/versioning/determine_command/time/is_post_26_1

##> Determine which commands should be used to change game rules:
##> '/gamerule minecraft:keep_inventory' (1) (Minecraft 1.21.11+)
##> or '/gamerule keepInventory' (0) (Minecraft pre-1.21.11)
execute store result score (command_version/gamerule) hygrave.var run function hygrave:internal/versioning/determine_command/gamerule/is_post_25_4