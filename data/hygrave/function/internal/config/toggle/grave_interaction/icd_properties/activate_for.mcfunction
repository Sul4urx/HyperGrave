#<< config/open_page/grave_interaction/icd_properties

## Toggle value
scoreboard players add (grave_interaction/icd_properties/activate_for) hygrave.config 1
execute if score (grave_interaction/icd_properties/activate_for) hygrave.config matches 3.. run scoreboard players set (grave_interaction/icd_properties/activate_for) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_interaction/icd_properties