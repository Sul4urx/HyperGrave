#<< config/open_page/graves

## Toggle value
scoreboard players add (graves/freeze_grave_despawn_time) hygrave.config 1
execute if score (graves/freeze_grave_despawn_time) hygrave.config matches 2.. run scoreboard players set (graves/freeze_grave_despawn_time) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves