#<< config/open_page/grave_appearance/text_display_properties/icd_text

## Toggle value
$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text{bold: 1b} run data modify storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold set value 2b
$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text{bold: 0b} run data modify storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold set value 1b
$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text{bold: 2b} run data modify storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold set value 0b

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text