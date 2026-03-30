#@> Executed from:
#@>   function hygrave:internal/loop/1t

## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage hygrave:common players[].temp

##> Player
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @s hygrave.pid
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args

## Store PContents if Mod Compatibility Mode is enabled
function hygrave:internal/map/players/store_pcontents