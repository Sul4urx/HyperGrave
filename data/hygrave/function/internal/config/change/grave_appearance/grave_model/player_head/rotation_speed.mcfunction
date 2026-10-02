#@> Executed from:
#@>   function hygrave:internal/config/open_page/grave_appearance/grave_model/player_head_expanded

$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  type: "minecraft:int_value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  test: {\
    min: -179,\
    max: 179\
  }\
} run return run function hygrave:internal/helper/message/error {text: {\
  "translate": "hygrave.change_config_message.player_head.rotation_speed.fail",\
  "fallback": "§cThe value must be an integer between -180 and 180 (non-inclusive)."\
}}

## If success, change value
execute store result score (grave_appearance/grave_model/player_head/rotation_speed) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "grave_appearance/grave_model/player_head_expanded"}