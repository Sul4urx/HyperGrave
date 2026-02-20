#<< config/open_page/grave_interaction/icd_properties

## Toggle value
scoreboard players add (grave_interaction/icd_properties/switch_text_display) hygrave.config 1
execute if score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 2.. run scoreboard players set (grave_interaction/icd_properties/switch_text_display) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_interaction/icd_properties