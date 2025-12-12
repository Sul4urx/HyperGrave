#<< config/open_page/graves

## Toggle value
scoreboard players add (graves/tell_grave_mini_info) hygrave.config 1
execute if score (graves/tell_grave_mini_info) hygrave.config matches 3.. run scoreboard players set (graves/tell_grave_mini_info) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves