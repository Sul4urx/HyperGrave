#<< config/open_page/graves/item_distribution

## Toggle value
scoreboard players add (graves/item_distribution/grave_generation_fail/operation) sgrave2.config 1
execute if score (graves/item_distribution/grave_generation_fail/operation) sgrave2.config matches 2.. run scoreboard players set (graves/item_distribution/grave_generation_fail/operation) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/item_distribution