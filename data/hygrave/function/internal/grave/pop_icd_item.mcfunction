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


## Check and apply costs
execute as @p[tag=hygrave.temp.grave.interactor,tag=hygrave.temp.grave.owner] at @s run function hygrave:internal/grave/pop/check_costs/owners
execute as @p[tag=hygrave.temp.grave.interactor,tag=!hygrave.temp.grave.owner] at @s run function hygrave:internal/grave/pop/check_costs/non_owners

execute unless score .check_costs.gamemodes hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.pop.fail.cannot_afford_cost.gamemodes",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave."\
}
execute unless score .check_costs.items hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.pop.fail.cannot_afford_cost.items",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave."\
}
execute unless score .check_costs.xp hygrave.temp_var matches 1 run return run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.grave.pop.fail.cannot_afford_cost.xp",\
  "fallback": "§cYou do not have the nessecary requirements to loot this grave.",\
  "with": [\
    {\
      "nbt": "configs.text.costs.grave_looting_costs.owners.xp.levels",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}

## Drop items
function hygrave:internal/grave/pop/drop_icd_item