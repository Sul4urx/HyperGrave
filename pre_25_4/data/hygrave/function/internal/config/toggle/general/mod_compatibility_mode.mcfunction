#<< config/open_page/general

## Change game rules
gamerule keepInventory false

## Toggle value
scoreboard players add (general/mod_compatibility_mode) hygrave.config 1
execute if score (general/mod_compatibility_mode) hygrave.config matches 2.. run scoreboard players set (general/mod_compatibility_mode) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/general