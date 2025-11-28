#<! uninstall

## Check if the confirmation code was entered correctly
$data modify storage sgrave2:common temp.uninstall_confirm set value "$(confirm)"
execute unless data storage sgrave2:common temp{uninstall_confirm:"UNINSTALL"} run return -7

## Uninstall if confirmed
##> Cancel all function schedules
schedule clear sgrave2:internal/loop/1t
schedule clear sgrave2:internal/loop/1s

##> Remove all stored data
data remove storage sgrave2:common graves
data remove storage sgrave2:common active_graves
data remove storage sgrave2:common players
data remove storage sgrave2:common dimensions
data remove storage sgrave2:common configs

##> Remove all scores
scoreboard objectives remove sgrave2.temp_var
scoreboard objectives remove sgrave2.var
scoreboard objectives remove sgrave2.config
scoreboard objectives remove sgrave2.pid
scoreboard objectives remove sgrave2.gid
scoreboard objectives remove sgrave2.despawn_time
scoreboard objectives remove sgrave2.icd.cooldown
scoreboard objectives remove sgrave2.rotation_cooldown
scoreboard objectives remove sgrave2.show_grave_info
scoreboard objectives remove sgrave2.show_grave_info.view_next
scoreboard objectives remove sgrave2.show_grave_info.view_previous
scoreboard objectives remove sgrave2.remote_open_grave
scoreboard objectives remove sgrave2.info
scoreboard objectives remove sgrave2.help
scoreboard objectives remove sgrave2.death_count
