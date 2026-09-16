#@> Executed from:
#@>   function hygrave:internal/config/register

# Register sub-configs for Item Distribution config

## Show Distance
execute unless score (items/grave_locator/show_distance) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/show_distance) hygrave.config 1

execute store result storage hygrave:common configs.value.items.grave_locator.show_distance byte 1 run scoreboard players get (items/grave_locator/show_distance) hygrave.config

execute if data storage hygrave:common configs.value.items.grave_locator{show_distance:0b} run data modify storage hygrave:common configs.text.items.grave_locator.show_distance set value "§c❌"
execute if data storage hygrave:common configs.value.items.grave_locator{show_distance:1b} run data modify storage hygrave:common configs.text.items.grave_locator.show_distance set value "§a✔"

execute unless score (items/grave_locator/show_distance) hygrave.config matches 0..1 run scoreboard players set (items/grave_locator/show_distance) hygrave.config 1