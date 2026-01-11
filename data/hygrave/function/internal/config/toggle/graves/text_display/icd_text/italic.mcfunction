#<< config/open_page/graves/text_display_properties/icd_text

## Toggle value
$execute if data storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text{italic: 1b} run data modify storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text.italic set value 2b
$execute if data storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text{italic: 0b} run data modify storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text.italic set value 1b
$execute if data storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text{italic: 2b} run data modify storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text.italic set value 0b

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/text_display_properties/icd_text