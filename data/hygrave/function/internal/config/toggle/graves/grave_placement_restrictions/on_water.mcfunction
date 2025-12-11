#<< config/open_page/graves/grave_placement_restrictions

## Toggle value
scoreboard players add (graves/grave_placement_restrictions_restrictions/on_water) hygrave.config 1
execute if score (graves/grave_placement_restrictions_restrictions/on_water) hygrave.config matches 2.. run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_water) hygrave.config 0

## In Water and On Water sub-configs must not be both true
execute if score (graves/grave_placement_restrictions_restrictions/on_water) hygrave.config matches 1 if score (graves/grave_placement_restrictions_restrictions/in_water) hygrave.config matches 1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_water) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/grave_placement_restrictions