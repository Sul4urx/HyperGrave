#<< config/open_page/graves/icd_properties

## Toggle value
scoreboard players add (graves/icd/activate_for) hygrave.config 1
execute if score (graves/icd/activate_for) hygrave.config matches 3.. run scoreboard players set (graves/icd/activate_for) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/icd_properties