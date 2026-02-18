#<< config/open_page/grave_appearance/grave_model

## Toggle value
scoreboard players add (grave_appearance/grave_model/icd_item/render) hygrave.config 1
execute if score (grave_appearance/grave_model/icd_item/render) hygrave.config matches 2.. run scoreboard players set (grave_appearance/grave_model/icd_item/render) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_appearance/grave_model/icd_item_expanded