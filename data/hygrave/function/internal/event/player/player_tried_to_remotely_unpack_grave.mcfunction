#<< loop/1t

## Remotely unpack grave
execute store result storage hygrave:common temp.args.gid int 1 run scoreboard players get @s hygrave.remote_loot_grave
function hygrave:internal/grave/remote_unpack with storage hygrave:common temp.args