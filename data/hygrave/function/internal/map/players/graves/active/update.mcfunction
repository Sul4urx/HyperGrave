# Currently unused since running this every tick causes a lot of lag

## Bring the nessecary elements of maps to last index so that we can work with them

##> Player
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @s hygrave.pid
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args

## Update active grave
data modify storage hygrave:common players[-1].active_graves set from storage hygrave:common players[-1].graves
data remove storage hygrave:common players[-1].active_graves[{data:{status:{destroyed:1b}}}]