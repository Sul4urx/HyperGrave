#<< config/open_page/graves/show_grave_info

## Toggle value
scoreboard players add (graves/show_grave_info/an/creation_time) hygrave.config 1
execute if score (graves/show_grave_info/an/creation_time) hygrave.config matches 2.. run scoreboard players set (graves/show_grave_info/an/creation_time) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/show_grave_info