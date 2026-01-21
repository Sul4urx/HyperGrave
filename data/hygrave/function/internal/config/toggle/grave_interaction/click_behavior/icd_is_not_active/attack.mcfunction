#<< config/open_page/grave_interaction/click_behavior

## Toggle value
scoreboard players add (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config 1
execute if score (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config matches 3.. run scoreboard players set (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_interaction/click_behavior