## If Grave doesn't exist, throw error
$execute unless data storage hygrave:common active_graves[{data:{gid:$(gid)}}] run return run title @s actionbar {\
  "translate": "hygrave.ropen_grave.fail.grave_destroyed",\
  "fallback": "§cGrave #$(gid) either does not exist or has been destroyed."\
}

## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage hygrave:common players[].temp

##> Grave
$function hygrave:internal/map/graves/lookup {gid:$(gid)}

##> Player (Owner)
function hygrave:internal/map/players/lookup with storage hygrave:common graves[-1].data.owner
data modify storage hygrave:common players[-1].temp.owner set value 1b

$function hygrave:internal/map/players/graves/lookup {gid:$(gid)}

##> Player (Interactor)
execute store result storage hygrave:common temp.args1.pid int 1 run scoreboard players get @s hygrave.pid
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args1
data modify storage hygrave:common players[-1].temp.interactor set value 1b

## Add temp tags
tag @s add hygrave.temp.grave.interactor
function hygrave:internal/grave/tag_owner with storage hygrave:common graves[-1].data.owner

## Give items
function hygrave:internal/grave/ropen/give_items/main

## Give XP
data modify storage hygrave:common temp.args.value set from storage hygrave:common graves[-1].contents.xp.after_death.total

execute as @p[tag=hygrave.temp.grave.interactor] at @s run function hygrave:internal/macro/xp_add with storage hygrave:common temp.args

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
data modify storage hygrave:common graves[-1].data.status set value {destroyed:1b,destruction_type:"ropened"}
data modify storage hygrave:common graves[-1].data.status.destroyer set from storage hygrave:common players[{temp:{interactor:1b}}].player

data modify storage hygrave:common players[{temp:{owner:1b}}].graves[-1].data.status set from storage hygrave:common graves[-1].data.status

## Remove temp tag
tag @s remove hygrave.temp.grave.interactor
