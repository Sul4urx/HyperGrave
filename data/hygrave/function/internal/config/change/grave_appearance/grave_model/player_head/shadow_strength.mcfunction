#<< config/open_page/grave_appearance/grave_model
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  range: {\
    min: 0,\
    max: 10000\
  }\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.player_head.shadow_strength.fail",\
  "fallback": "§cThe value must be an integer between 0 and 10000 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.player_head.shadow_strength.success",\
  "fallback": "Successfully changed the Shadow Strength from %s to %s.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.text.grave_appearance.grave_model.player_head.shadow_strength"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (grave_appearance/grave_model/player_head/shadow_strength) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_appearance/grave_model/player_head_expanded