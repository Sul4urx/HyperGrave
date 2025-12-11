#<< config/open_page/general

## Change game rules
gamerule minecraft:keep_inventory false

## Toggle value
scoreboard players add (general/mod_compatibility_mode) sgrave2.config 1
execute if score (general/mod_compatibility_mode) sgrave2.config matches 2.. run scoreboard players set (general/mod_compatibility_mode) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/general