#@> Executed from:
#@>   function hygrave:internal/event/player/player_died
#@>   function hygrave:internal/loop/1t
#@>   function hygrave:run/grave/admin/generate

## Bring the nessecary elements of databases to last index so that we can work with them

##> Remove temp data
data remove storage hygrave:common players[].temp

##> Player
execute store result storage hygrave:common temp.mcargs.'database/players/lookup'.pid int 1 run scoreboard players get @s hygrave.pid
function hygrave:internal/database/players/lookup with storage hygrave:common temp.mcargs.'database/players/lookup'

## Store PContents if Mod Compatibility Mode is enabled
function hygrave:internal/database/players/store_pcontents