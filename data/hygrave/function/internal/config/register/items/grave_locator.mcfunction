#@> Executed from:
#@>   function hygrave:internal/config/register

# Register sub-configs for Item Distribution config

## Show Distance
execute unless score (items/grave_locator/show_distance) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/show_distance) hygrave.config 1

execute store result storage hygrave:common configs.value.items.grave_locator.show_distance byte 1 run scoreboard players get (items/grave_locator/show_distance) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator{show_distance:0b} run data modify storage hygrave:common configs.text.items.grave_locator.show_distance set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator{show_distance:1b} run data modify storage hygrave:common configs.text.items.grave_locator.show_distance set value "§a✔"

execute unless score (items/grave_locator/show_distance) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/show_distance) hygrave.config 1

## Locatable Grave Types

##> AO
execute unless score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/ao) hygrave.config 1

execute store result storage hygrave:common configs.value.items.grave_locator.locatable_grave_types.ao byte 1 run scoreboard players get (items/grave_locator/locatable_grave_types/ao) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{ao:0b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.ao set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{ao:1b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.ao set value "§a✔"

execute unless score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/ao) hygrave.config 1

##> BO
execute unless score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/bo) hygrave.config 0

execute store result storage hygrave:common configs.value.items.grave_locator.locatable_grave_types.bo byte 1 run scoreboard players get (items/grave_locator/locatable_grave_types/bo) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{bo:0b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.bo set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{bo:1b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.bo set value "§a✔"

execute unless score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/bo) hygrave.config 1

##> AN
execute unless score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/an) hygrave.config 1

execute store result storage hygrave:common configs.value.items.grave_locator.locatable_grave_types.an byte 1 run scoreboard players get (items/grave_locator/locatable_grave_types/an) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{an:0b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.an set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{an:1b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.an set value "§a✔"

execute unless score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/an) hygrave.config 1

##> BN
execute unless score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/bn) hygrave.config 0

execute store result storage hygrave:common configs.value.items.grave_locator.locatable_grave_types.bn byte 1 run scoreboard players get (items/grave_locator/locatable_grave_types/bn) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{bn:0b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.bn set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator.locatable_grave_types{bn:1b} run data modify storage hygrave:common configs.text.items.grave_locator.locatable_grave_types.bn set value "§a✔"

execute unless score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/locatable_grave_types/bn) hygrave.config 1

## Keep After Death
execute unless score (items/grave_locator/keep_after_death) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/keep_after_death) hygrave.config 1

execute store result storage hygrave:common configs.value.items.grave_locator.keep_after_death byte 1 run scoreboard players get (items/grave_locator/keep_after_death) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator{keep_after_death:0b} run data modify storage hygrave:common configs.text.items.grave_locator.keep_after_death set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator{keep_after_death:1b} run data modify storage hygrave:common configs.text.items.grave_locator.keep_after_death set value "§a✔"

execute unless score (items/grave_locator/keep_after_death) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/keep_after_death) hygrave.config 1