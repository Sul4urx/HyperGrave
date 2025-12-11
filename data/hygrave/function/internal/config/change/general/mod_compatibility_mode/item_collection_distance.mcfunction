#<< config/open_page/general
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
    max: 16\
  }\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.mod_compatibility_mode.item_collection_distance.fail",\
  "fallback": "§cThe value must be an integer between 0 and 16 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.mod_compatibility_mode.item_collection_distance.success",\
  "fallback": "Successfully changed the Item Collection Distance config from %s to %s.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.text.general.'mod_compatibility_mode/item_collection_distance'"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (general/mod_compatibility_mode/item_collection_distance) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/general