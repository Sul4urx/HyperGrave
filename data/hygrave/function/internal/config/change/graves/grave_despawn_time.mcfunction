#@> Executed from:
#@>   function hygrave:internal/config/open_page/graves

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
  "translate": "hygrave.change_config_message.despawn_time.grave.fail",\
  "fallback": "§cThe value must be a non-negative integer."\
}

## If success, change value
execute store result score (graves/despawn_time) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves