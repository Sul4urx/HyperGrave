#<< config/open_page/graves/text_display_properties/text

$data modify storage hygrave:common temp.config.value set value $(value)

$execute \
  unless data storage hygrave:common temp.config.value{color: "black"} \
  unless data storage hygrave:common temp.config.value{color: "dark_blue"} \
  unless data storage hygrave:common temp.config.value{color: "dark_green"} \
  unless data storage hygrave:common temp.config.value{color: "dark_aqua"} \
  unless data storage hygrave:common temp.config.value{color: "dark_red"} \
  unless data storage hygrave:common temp.config.value{color: "dark_purple"} \
  unless data storage hygrave:common temp.config.value{color: "gold"} \
  unless data storage hygrave:common temp.config.value{color: "gray"} \
  unless data storage hygrave:common temp.config.value{color: "dark_gray"} \
  unless data storage hygrave:common temp.config.value{color: "blue"} \
  unless data storage hygrave:common temp.config.value{color: "green"} \
  unless data storage hygrave:common temp.config.value{color: "aqua"} \
  unless data storage hygrave:common temp.config.value{color: "red"} \
  unless data storage hygrave:common temp.config.value{color: "light_purple"} \
  unless data storage hygrave:common temp.config.value{color: "yellow"} \
  unless data storage hygrave:common temp.config.value{color: "white"} \
run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display.text.line_$(line_idx).text_$(text_idx).color.fail",\
  "fallback": "§cInvalid color."\
}

$data modify storage hygrave:common configs.value.graves.text_display.text.line_$(line_idx).text_$(text_idx).text.color set from storage hygrave:common temp.config.value.color

$title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display.text.line_$(line_idx).text_$(text_idx).color.success",\
  "fallback": "Successfully changed color of Text $(text_idx) from Line $(line_idx)."\
}

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/text_display_properties/text