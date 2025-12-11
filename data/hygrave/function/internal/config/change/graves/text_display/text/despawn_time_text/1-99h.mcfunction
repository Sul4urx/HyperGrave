#<< config/open_page/graves/text_display_properties
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
summon minecraft:text_display ~ ~255 ~ {Tags: ["hygrave.temp.config_checker.text_display"], text: {text: "a", color: "green"}}

data modify entity @n[tag=hygrave.temp.config_checker.text_display] text set from storage hygrave:common temp.config.value

execute if data entity @n[tag=hygrave.temp.config_checker.text_display] text{text: "a", color: "green"} run title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display.text.despawn_time_text.1-99_hours.fail",\
  "fallback": "§cThe value is invalid."\
}

execute if data entity @n[tag=hygrave.temp.config_checker.text_display] text{text: "a", color: "green"} run return run kill @e[tag=hygrave.temp.config_checker.text_display]
kill @e[tag=hygrave.temp.config_checker.text_display]

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display.text.despawn_time_text.1-99_hours.success",\
  "fallback": "Successfully changed Despawn Time Text / 1-99 Hours."\
}

## If success, change value
data modify storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-99_hours set from storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/text_display_properties