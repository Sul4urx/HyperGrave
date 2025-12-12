#<< config/open_page/general

## Toggle value
scoreboard players add (general/change_gamerules) hygrave.config 1
execute if score (general/change_gamerules) hygrave.config matches 2.. run scoreboard players set (general/change_gamerules) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/general