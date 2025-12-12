#<< grave/main

## If no items, cancel feature
execute as @n[tag=hygrave.temp.grave.base] at @s unless data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run return run function hygrave:internal/grave/icd/cancel

## Honestly I have no idea what this does
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @s hygrave.pid

## Display the feature
execute as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/icd/display
