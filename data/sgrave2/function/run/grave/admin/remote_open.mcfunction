## If Grave doesn't exist, throw error
$execute unless data storage sgrave2:common active_graves[{data:{gid:$(gid)}}] run return run title @s actionbar {\
  "translate": "sgrave2.ropen_grave.fail.grave_destroyed",\
  "fallback": "§cGrave #$(gid) either does not exist or has been destroyed.",\
}

## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage sgrave2:common players[].temp

##> Grave
$function sgrave2:internal/map/graves/lookup {gid:$(gid)}

##> Player (Owner)
function sgrave2:internal/map/players/lookup with storage sgrave2:common graves[-1].data.owner
data modify storage sgrave2:common players[-1].temp.owner set value 1b

$function sgrave2:internal/map/players/graves/lookup {gid:$(gid)}

##> Player (Interactor)
execute store result storage sgrave2:common temp.args1.pid int 1 run scoreboard players get @s sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args1
data modify storage sgrave2:common players[-1].temp.interactor set value 1b

## Add temp tags
tag @s add sgrave2.temp.grave.interactor
function sgrave2:internal/grave/tag_owner with storage sgrave2:common graves[-1].data.owner

## Give items
function sgrave2:internal/grave/ropen/give_items/main

## Give XP
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common graves[-1].contents.xp.after_death.total

execute as @p[tag=sgrave2.temp.grave.interactor] at @s run function sgrave2:internal/macro/xp_add with storage sgrave2:common temp.args

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
data modify storage sgrave2:common graves[-1].data.status set value {destroyed:1b,destruction_type:"ropened"}
data modify storage sgrave2:common graves[-1].data.status.destroyer set from storage sgrave2:common players[{temp:{interactor:1b}}].player

data modify storage sgrave2:common players[{temp:{owner:1b}}].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Remove temp tag
tag @s remove sgrave2.temp.grave.interactor
