#@> Executed from:
#@>   function hygrave:internal/config/open_page/dropped_contents

$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  type: "minecraft:int_value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  test: {min: 0}\
} run return run function hygrave:internal/helper/message/error {text: {\
  "translate": "hygrave.change_config_message.despawn_time.item.fail",\
  "fallback": "§cThe value must be a non-negative integer."\
}}

## If success, change value
execute store result score (dropped_contents/item_despawn_time) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "dropped_contents"}