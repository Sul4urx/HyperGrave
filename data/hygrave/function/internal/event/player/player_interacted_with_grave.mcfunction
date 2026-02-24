#<< grave/main

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

## Pop or Unpack the grave
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config matches 1 run function hygrave:internal/grave/pop
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config matches 2 run function hygrave:internal/grave/unpack

execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 1 run function hygrave:internal/grave/pop
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 2 run function hygrave:internal/grave/unpack
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 3 run function hygrave:internal/grave/pop_icd_item
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 4 run function hygrave:internal/grave/unpack_icd_item

## Sync items
data modify storage hygrave:common graves[-1].contents.items set from entity @s item.components.minecraft:custom_data.hygrave:common.items
execute unless entity @s run data modify storage hygrave:common graves[-1].contents.items set value []