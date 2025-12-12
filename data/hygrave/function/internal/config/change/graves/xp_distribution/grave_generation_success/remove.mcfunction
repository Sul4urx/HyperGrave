#<< config/open_page/graves/xp_distribution
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.graves.xp_distribution.grave_generation_success.remove.fail",\
  "fallback": "§cThe value must be an integer between 0 and 25 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "hygrave.change_config_message.graves.xp_distribution.grave_generation_success.remove.success",\
  "fallback": "Successfully changed the 'remove' operation weight from %s to %s.",\
  "with": [\
    {"storage": "hygrave:common", "nbt": "configs.value.graves.xp_distribution.grave_generation_success.remove"},\
    {"storage": "hygrave:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (graves/xp_distribution/grave_generation_success/remove) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Warning if total weight is 0
execute unless score (graves/xp_distribution/grave_generation_success/total) hygrave.config matches 1.. run title @s actionbar {\
  "translate": "hygrave.change_config_message.graves.xp_distribution.grave_generation_success.total.warning.is_0",\
  "fallback": "§6Be careful, the total weight must not be 0!"\
}

## Refresh page
function hygrave:internal/config/open_page/graves/xp_distribution