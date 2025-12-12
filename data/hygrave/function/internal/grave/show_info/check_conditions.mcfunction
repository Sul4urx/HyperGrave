#<< loop/1t
#<< grave/show_info/show_non-admin/view_*

# Check conditions to see if grave info should be shown to player

## Initialize variables
execute store result score .grave_count hygrave.temp_var if data storage hygrave:common graves[]


## Check if any graves have been generated yet
execute unless score .grave_count hygrave.temp_var matches 1.. run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Check is value is valid
execute \
  unless score @s hygrave.show_grave_info matches 1..128 \
  unless score @s hygrave.show_grave_info matches -128..-1 \
  unless score @s hygrave.show_grave_info matches 1000.. \
run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.invalid_value",\
  "fallback": "§cInvalid value."\
}

## If GID is from -128 to -1, show GIDth grave
execute if score @s hygrave.show_grave_info matches -128..-1 run scoreboard players operation .gid hygrave.temp_var = (first_gid) hygrave.var
execute if score @s hygrave.show_grave_info matches -128..-1 run scoreboard players operation .gid hygrave.temp_var -= @s hygrave.show_grave_info
execute if score @s hygrave.show_grave_info matches -128..-1 run scoreboard players remove .gid hygrave.temp_var 1

execute if score @s hygrave.show_grave_info matches -128..-1 if score .gid hygrave.temp_var > (last_gid) hygrave.var run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.value_out_of_bound",\
  "fallback": "§cThe value is out of bounds; there are only %s§c graves.",\
  "with": [\
    {\
       "score": {"name": ".grave_count", "objective": "hygrave.temp_var"},\
       "color": "red"\
    }\
  ]\
}

execute if score @s hygrave.show_grave_info matches -128..-1 run scoreboard players operation @s hygrave.show_grave_info = .gid hygrave.temp_var

## If GID is from 1 to 128, show last GIDth grave
execute if score @s hygrave.show_grave_info matches 1..128 run scoreboard players operation .gid hygrave.temp_var = (last_gid) hygrave.var
execute if score @s hygrave.show_grave_info matches 1..128 run scoreboard players operation .gid hygrave.temp_var -= @s hygrave.show_grave_info
execute if score @s hygrave.show_grave_info matches 1..128 run scoreboard players add .gid hygrave.temp_var 1

execute if score @s hygrave.show_grave_info matches 1..128 if score .gid hygrave.temp_var < (first_gid) hygrave.var run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.value_out_of_bound",\
  "fallback": "§cThe value is out of bounds; there are only %s§c graves.",\
  "with": [\
    {\
       "score": {"name": ".grave_count", "objective": "hygrave.temp_var"},\
       "color": "red"\
    }\
  ]\
}

execute if score @s hygrave.show_grave_info matches 1..128 run scoreboard players operation @s hygrave.show_grave_info = .gid hygrave.temp_var

## Read the input GID and store it
execute store result storage hygrave:common temp.args.gid int 1 run scoreboard players get @s hygrave.show_grave_info

## Check if the grave has ever existed before
execute store result score .grave_exists hygrave.temp_var run function hygrave:internal/grave/show_info/check_if_grave_exists with storage hygrave:common temp.args

##> If not, tell error to player
execute if score .grave_exists hygrave.temp_var matches 0 run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.gid",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}


## Bring the nessecary elements of maps to last index so that we can work with thems

##> Grave
function hygrave:internal/map/graves/lookup with storage hygrave:common temp.args

## Check for type:
## AO: Active grave belonging to the player
## BO: Destroyed grave belonging to the player
## AN: Active grave not belonging to the player
## BN: Destroyed grave not belonging to the player
execute store result score .stored_pid hygrave.temp_var run data get storage hygrave:common graves[-1].data.owner.pid

##> AO
execute if score .stored_pid hygrave.temp_var = @s hygrave.pid unless data storage hygrave:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/ao) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_non-admin/ao with storage hygrave:common temp.args

execute if score .stored_pid hygrave.temp_var = @s hygrave.pid unless data storage hygrave:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/ao) hygrave.config matches 0 run title @s actionbar {\
    "translate": "hygrave.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> BO
execute if score .stored_pid hygrave.temp_var = @s hygrave.pid if data storage hygrave:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/bo) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_non-admin/bo with storage hygrave:common temp.args

execute if score .stored_pid hygrave.temp_var = @s hygrave.pid if data storage hygrave:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/bo) hygrave.config matches 0 run title @s actionbar {\
    "translate": "hygrave.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> AN
execute unless score .stored_pid hygrave.temp_var = @s hygrave.pid unless data storage hygrave:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/an) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_non-admin/an with storage hygrave:common temp.args

execute unless score .stored_pid hygrave.temp_var = @s hygrave.pid unless data storage hygrave:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/an) hygrave.config matches 0 run title @s actionbar {\
    "translate": "hygrave.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> BN
execute unless score .stored_pid hygrave.temp_var = @s hygrave.pid if data storage hygrave:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/bn) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_non-admin/bn with storage hygrave:common temp.args

execute unless score .stored_pid hygrave.temp_var = @s hygrave.pid if data storage hygrave:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/bn) hygrave.config matches 0 run title @s actionbar {\
    "translate": "hygrave.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }