#<< config/open_page/graves/grave_placement_restrictions

## Toggle value
scoreboard players add (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) hygrave.config 1
execute if score (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) hygrave.config matches 2.. run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/grave_placement_restrictions