#<< config/open_page/graves/item_distribution

## Toggle value
scoreboard players add (graves/item_distribution/grave_generation_fail/operation) hygrave.config 1
execute if score (graves/item_distribution/grave_generation_fail/operation) hygrave.config matches 2.. run scoreboard players set (graves/item_distribution/grave_generation_fail/operation) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/item_distribution