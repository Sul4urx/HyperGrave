#<< loop/1s

## Remove 1 second from despawn time
scoreboard players remove @s hygrave.despawn_time 1

## If despawn time reaches 0, delete grave
execute if score @s hygrave.despawn_time matches ..0 run return run kill @s