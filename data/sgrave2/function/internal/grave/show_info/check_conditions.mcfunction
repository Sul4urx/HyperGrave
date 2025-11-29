#<< loop/1t
#<< grave/show_info/show_non-admin/view_*

# Check conditions to see if grave info should be shown to player

## Initialize variables
execute store result score .grave_count sgrave2.temp_var if data storage sgrave2:common graves[]


## Check if any graves have been generated yet
execute unless score .grave_count sgrave2.temp_var matches 1.. run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Check is value is valid
execute \
  unless score @s sgrave2.show_grave_info matches 1..128 \
  unless score @s sgrave2.show_grave_info matches -128..-1 \
  unless score @s sgrave2.show_grave_info matches 1000.. \
run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.invalid_value",\
  "fallback": "§cInvalid value."\
}

## If GID is from -128 to -1, show GIDth grave
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation .gid sgrave2.temp_var = (first_gid) sgrave2.var
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation .gid sgrave2.temp_var -= @s sgrave2.show_grave_info
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players remove .gid sgrave2.temp_var 1

execute if score @s sgrave2.show_grave_info matches -128..-1 if score .gid sgrave2.temp_var > (last_gid) sgrave2.var run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.value_out_of_bound",\
  "fallback": "§cThe value is out of bounds; there are only %s§c graves.",\
  "with": [\
    {\
       "score": {"name": ".grave_count", "objective": "sgrave2.temp_var"},\
       "color": "red"\
    }\
  ]\
}

execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation @s sgrave2.show_grave_info = .gid sgrave2.temp_var

## If GID is from 1 to 128, show last GIDth grave
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation .gid sgrave2.temp_var = (last_gid) sgrave2.var
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation .gid sgrave2.temp_var -= @s sgrave2.show_grave_info
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players add .gid sgrave2.temp_var 1

execute if score @s sgrave2.show_grave_info matches 1..128 if score .gid sgrave2.temp_var < (first_gid) sgrave2.var run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.value_out_of_bound",\
  "fallback": "§cThe value is out of bounds; there are only %s§c graves.",\
  "with": [\
    {\
       "score": {"name": ".grave_count", "objective": "sgrave2.temp_var"},\
       "color": "red"\
    }\
  ]\
}

execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation @s sgrave2.show_grave_info = .gid sgrave2.temp_var

## Read the input GID and store it
execute store result storage sgrave2:common temp.args.gid int 1 run scoreboard players get @s sgrave2.show_grave_info

## Check if the grave has ever existed before
execute store result score .grave_exists sgrave2.temp_var run function sgrave2:internal/grave/show_info/check_if_grave_exists with storage sgrave2:common temp.args

##> If not, tell error to player
execute if score .grave_exists sgrave2.temp_var matches 0 run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.gid",\
      "storage": "sgrave2:common",\
      "color": "red"\
    }\
  ]\
}


## Bring the nessecary elements of maps to last index so that we can work with thems

##> Grave
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args

## Check for type:
## N: Active grave belonging to the player
## B: Destroyed grave belonging to the player
## O: Active grave not belonging to the player
## BO: Destroyed grave not belonging to the player
execute store result score .stored_pid sgrave2.temp_var run data get storage sgrave2:common graves[-1].data.owner.pid

##> N
execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/ao) sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/ao with storage sgrave2:common temp.args

execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/ao) sgrave2.config matches 0 run title @s actionbar {\
    "translate": "sgrave2.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> B
execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/bo) sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/bo with storage sgrave2:common temp.args

execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/bo) sgrave2.config matches 0 run title @s actionbar {\
    "translate": "sgrave2.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> O
execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/an) sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/an with storage sgrave2:common temp.args

execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/an) sgrave2.config matches 0 run title @s actionbar {\
    "translate": "sgrave2.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }

##> BO
execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{destroyed:1b} unless score (graves/show_grave_info/bn) sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/bn with storage sgrave2:common temp.args

execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{destroyed:1b} if score (graves/show_grave_info/bn) sgrave2.config matches 0 run title @s actionbar {\
    "translate": "sgrave2.grave_info.fail.cannot_view_contents",\
    "fallback": "§cYou cannot view the contents of this grave."\
  }