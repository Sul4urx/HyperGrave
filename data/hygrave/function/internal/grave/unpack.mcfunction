#<< event/player/player_interacted_with_grave

## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage hygrave:common players[].temp

##> Grave
data modify storage hygrave:common temp.args.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid
function hygrave:internal/map/graves/lookup with storage hygrave:common temp.args

##> Player (Owner)
function hygrave:internal/map/players/lookup with entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.owner
data modify storage hygrave:common players[-1].temp.owner set value 1b

function hygrave:internal/map/players/graves/lookup with storage hygrave:common temp.args

##> Player (Interactor)
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @p[tag=hygrave.temp.grave.interactor] hygrave.pid
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args
data modify storage hygrave:common players[-1].temp.interactor set value 1b

## Check and apply requirements
execute as @p[tag=hygrave.temp.grave.interactor,tag=hygrave.temp.grave.owner] at @s run function hygrave:internal/grave/unpack/check_requirements/owners
execute as @p[tag=hygrave.temp.grave.interactor,tag=!hygrave.temp.grave.owner] at @s run function hygrave:internal/grave/unpack/check_requirements/non_owners

execute unless score .check_requirements.gamemodes hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.unpack.fail.does_not_meet_requirements.gamemodes",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave."\
}
execute unless score .check_requirements.items hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.unpack.fail.does_not_meet_requirements.items",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave."\
}
execute unless score .check_requirements.xp hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.unpack.fail.does_not_meet_requirements.xp",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave.",\
  "with": [\
    {\
      "nbt": "configs.text.requirements.grave_looting_requirements.owners.xp.levels",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}

## Give items
function hygrave:internal/grave/unpack/give_items/main

## Give XP
data modify storage hygrave:common temp.args.value set from entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.after_death.total

execute as @p[tag=hygrave.temp.grave.interactor] at @s run function hygrave:internal/macro/xp_add with storage hygrave:common temp.args

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
data modify storage hygrave:common graves[-1].data.status set value {destroyed:1b,destruction_type:"unpacked"}
data modify storage hygrave:common graves[-1].data.status.destroyer set from storage hygrave:common players[{temp:{interactor:1b}}].player

data modify storage hygrave:common players[{temp:{owner:1b}}].graves[-1].data.status set from storage hygrave:common graves[-1].data.status

## Delete grave
function hygrave:internal/grave/delete