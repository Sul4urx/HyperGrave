#<< config/open_page/graves

## Toggle value
scoreboard players add (graves/glowing_graves) hygrave.config 1
execute if score (graves/glowing_graves) hygrave.config matches 2.. run scoreboard players set (graves/glowing_graves) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves