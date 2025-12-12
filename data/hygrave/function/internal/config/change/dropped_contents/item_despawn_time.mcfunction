#<< config/open_page/dropped_contents
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0}\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.despawn_time.item.fail",\
  "fallback": "§cThe value must be a non-negative integer."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.despawn_time.item.success",\
  "fallback": "Successfully changed the Item Despawn Time config from %s seconds to %s seconds.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.value.dropped_contents.item.despawn_time"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (dropped_contents/item_despawn_time) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/dropped_contents