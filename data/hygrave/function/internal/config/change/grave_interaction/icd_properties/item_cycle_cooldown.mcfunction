#@> Executed from:
#@>   function hygrave:internal/config/open_page/grave_interaction/icd_properties

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
    min: 0,\
    max: 160\
  }\
} run return run function hygrave:internal/helper/message/error {text: {\
  "translate": "hygrave.change_config_message.icd.item_cycle_cooldown.fail",\
  "fallback": "§cThe value must be an integer between 0 and 160 (inclusive)."\
}}

## If success, change value
execute store result score (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "grave_interaction/icd_properties"}