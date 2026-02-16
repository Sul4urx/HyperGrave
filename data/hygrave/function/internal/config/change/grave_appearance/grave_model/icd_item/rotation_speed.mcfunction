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
    min: -179,\
    max: 179\
  }\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.icd_item.rotation_speed.fail",\
  "fallback": "§cThe value must be an integer between -180 and 180 (non-inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.icd_item.rotation_speed.success",\
  "fallback": "Successfully changed the Rotation Speed from %s°/s to %s°/s.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.text.grave_appearance.grave_model.icd_item.rotation_speed"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (grave_appearance/grave_model/icd_item/rotation_speed) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_appearance/grave_model