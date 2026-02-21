#<< config/open_page/grave_appearance/text_display_properties/text

$data modify storage hygrave:common temp.config.value set value $(type)

$execute \
  unless data storage hygrave:common temp.config{value: "nothing"} \
  unless data storage hygrave:common temp.config{value: "custom_text"} \
  unless data storage hygrave:common temp.config{value: "owner_name"} \
  unless data storage hygrave:common temp.config{value: "grave_gid"} \
  unless data storage hygrave:common temp.config{value: "despawn_time"} \
  unless data storage hygrave:common temp.config{value: "creation_time"} \
  unless data storage hygrave:common temp.config{value: "after_death_xp"} \
  unless data storage hygrave:common temp.config{value: "item_count"} \
run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display_properties.text.line_$(line_idx).text_$(text_idx).type.fail",\
  "fallback": "§cInvalid type."\
}

$data modify storage hygrave:common configs.value.grave_appearance.text_display_properties.text.line_$(line_idx).text_$(text_idx).type set from storage hygrave:common temp.config.value

$title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display_properties.text.line_$(line_idx).text_$(text_idx).type.success",\
  "fallback": "Successfully changed type of Text $(text_idx) from Line $(line_idx)."\
}

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/text