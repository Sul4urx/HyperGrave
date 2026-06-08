#@> Executed from:
#@>   function hygrave:run/grave/admin/show_grave_info

## Read the input GID and store it
execute store result storage hygrave:common temp.mcargs.'grave/show_info/check_if_grave_exists'.gid int 1 run scoreboard players get @s hygrave.show_grave_info
execute store result storage hygrave:common temp.mcargs.'database/graves/lookup'.gid int 1 run scoreboard players get @s hygrave.show_grave_info

## Check if any graves have been generated yet
execute unless data storage hygrave:common graves[0] run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Check if the grave has ever existed before
execute store result score .grave_exists hygrave.temp_var run function hygrave:internal/grave/show_info/check_if_grave_exists with storage hygrave:common temp.mcargs.'grave/show_info/check_if_grave_exists'

## If not, tell error to player
execute if score .grave_exists hygrave.temp_var matches 0 run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": [\
    {\
      "score": {\
        "name": "@s",\
        "objective": "hygrave.show_grave_info"\
      }\
    }\
  ]\
}


## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
function hygrave:internal/database/graves/lookup with storage hygrave:common temp.mcargs.'database/graves/lookup'

## Prevent loop
scoreboard players set @s hygrave.show_grave_info 0

## Prepare to show despawn time
## by converting from ticks to seconds, minutes and hours
execute store result score .despawn_time hygrave.temp_var run data get storage hygrave:common graves[-1].data.despawn_time
scoreboard players operation .despawn_time.seconds hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.seconds hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.minutes hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.minutes hygrave.temp_var /= (60) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var

## Title
function hygrave:internal/grave/show_info/fields/show_title

## Owner
function hygrave:internal/grave/show_info/fields/show_owner

## Location
function hygrave:internal/grave/show_info/fields/show_location/all

## XP
execute unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both

execute if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both/total_too_big

## Despawn time
execute unless data storage hygrave:common graves[-1].status{destroyed:1b} run function hygrave:internal/grave/show_info/fields/show_despawn_time

## Creation time
function hygrave:internal/grave/show_info/fields/show_creation_time

## Items
function hygrave:internal/grave/show_info/fields/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
execute unless data storage hygrave:common graves[-1].data.status{destroyed:1b} run function hygrave:internal/grave/show_info/fields/show_status/active

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"\
} run function hygrave:internal/grave/show_info/fields/show_status/unpacked_by

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"\
} run function hygrave:internal/grave/show_info/fields/show_status/remote_unpacked_by

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"\
} run function hygrave:internal/grave/show_info/fields/show_status/popped_by

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"despawned"\
} run function hygrave:internal/grave/show_info/fields/show_status/despawned

##
tellraw @s ""

## Menu
$execute unless data storage hygrave:common graves[-1].data.status{destroyed:1b} run function hygrave:internal/grave/show_info/fields/show_menu/active {gid: $(gid)}
$execute unless data storage hygrave:common graves[-1].data.status{destroyed:1b} run function hygrave:internal/grave/show_info/fields/show_menu/broken {gid: $(gid)}

##
tellraw @s ""