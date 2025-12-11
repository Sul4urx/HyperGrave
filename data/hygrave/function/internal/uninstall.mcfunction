#<! uninstall

## Check if the confirmation code was entered correctly
$data modify storage hygrave:common temp.uninstall_confirm set value "$(confirm)"
execute unless data storage hygrave:common temp{uninstall_confirm:"UNINSTALL"} run return -7

## Uninstall if confirmed
##> Cancel all function schedules
schedule clear hygrave:internal/loop/1t
schedule clear hygrave:internal/loop/1s

##> Remove all stored data
data remove storage hygrave:common graves
data remove storage hygrave:common active_graves
data remove storage hygrave:common players
data remove storage hygrave:common dimensions
data remove storage hygrave:common configs

##> Remove all scores
scoreboard objectives remove hygrave.temp_var
scoreboard objectives remove hygrave.var
scoreboard objectives remove hygrave.config
scoreboard objectives remove hygrave.pid
scoreboard objectives remove hygrave.gid
scoreboard objectives remove hygrave.despawn_time
scoreboard objectives remove hygrave.icd.cooldown
scoreboard objectives remove hygrave.rotation_cooldown
scoreboard objectives remove hygrave.show_grave_info
scoreboard objectives remove hygrave.show_grave_info.view_next
scoreboard objectives remove hygrave.show_grave_info.view_previous
scoreboard objectives remove hygrave.remote_open_grave
scoreboard objectives remove hygrave.info
scoreboard objectives remove hygrave.help
scoreboard objectives remove hygrave.death_count
