## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage sgrave2:common players[].temp

##> Grave
data modify storage sgrave2:common temp.args.gid set from entity @s item.components.minecraft:custom_data.sgrave2:common.gid
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args

##> Player (Owner)
function sgrave2:internal/map/players/lookup with entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner
data modify storage sgrave2:common players[-1].temp.owner set value 1b

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args

##> Player (Interactor)
execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @p[tag=sgrave2.temp.grave.interactor] sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args
data modify storage sgrave2:common players[-1].temp.interactor set value 1b


## Check and apply costs
execute as @p[tag=sgrave2.temp.grave.interactor,tag=sgrave2.temp.grave.owner] at @s run function sgrave2:internal/grave/break/check_costs/owners
execute as @p[tag=sgrave2.temp.grave.interactor,tag=!sgrave2.temp.grave.owner] at @s run function sgrave2:internal/grave/break/check_costs/non_owners

execute unless score .check_costs.gamemodes sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.gamemodes",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave."\
}
execute unless score .check_costs.items sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.items",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave."\
}
execute unless score .check_costs.xp sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.xp",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave.",\
  "with": [\
    {\
      "nbt": "configs.text.costs.grave_opening_costs.owners.xp.levels",\
      "storage": "sgrave2:common",\
      "color": "red"\
    }\
  ]\
}

## Drop items
execute unless data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run function sgrave2:internal/grave/break/drop_items
execute if data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run return run function sgrave2:internal/grave/break/drop_icd_item

## Drop XP
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/grave/break/drop_xp

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update grave status

data modify storage sgrave2:common graves[-1].data.status set value {destroyed:1b,destruction_type:"broken"}
data modify storage sgrave2:common graves[-1].data.status.destroyer set from storage sgrave2:common players[{temp:{interactor:1b}}].player

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args
data modify storage sgrave2:common players[{temp:{owner:1b}}].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Delete grave
function sgrave2:internal/grave/delete