#<< config/open_page/grave_interaction/icd_properties
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
    max: 160\
  }\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.icd.item_cycle_cooldown.fail",\
  "fallback": "§cThe value must be an integer between 0 and 160 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.icd.item_cycle_cooldown.success",\
  "fallback": "Successfully changed the Item Cycle Cooldown config from %s levels to %s levels.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.text.graves.icd.item_cycle_cooldown"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (graves/icd/item_cycle_cooldown) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/grave_interaction/icd_properties