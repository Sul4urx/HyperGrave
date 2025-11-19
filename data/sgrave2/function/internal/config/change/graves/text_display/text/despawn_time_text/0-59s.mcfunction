#<< config/open_page/graves/text_display_properties
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not valid
summon minecraft:text_display ~ ~255 ~ {Tags: ["sgrave2.temp.config_checker.text_display"], text: {text: "a", color: "green"}}

data modify entity @n[tag=sgrave2.temp.config_checker.text_display] text set from storage sgrave2:common temp.config.value

execute if data entity @n[tag=sgrave2.temp.config_checker.text_display] text{text: "a", color: "green"} run title @s actionbar {\
  "translate": "sgrave2.change_config_message.text_display.text.despawn_time_text.0-59_seconds.fail",\
  "fallback": "§cThe value is invalid."\
}

execute if data entity @n[tag=sgrave2.temp.config_checker.text_display] text{text: "a", color: "green"} run return run kill @e[tag=sgrave2.temp.config_checker.text_display]
kill @e[tag=sgrave2.temp.config_checker.text_display]

## Otherwise success
title @s actionbar {\
  "translate": "sgrave2.change_config_message.text_display.text.despawn_time_text.0-59_seconds.success",\
  "fallback": "Successfully changed Despawn Time Text / 0-59 Seconds."\
}

## If success, change value
data modify storage sgrave2:common configs.value.graves.text_display.text.despawn_time_text.0-59_seconds set from storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/text_display_properties