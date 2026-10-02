#@> Executed from:
#@>   function hygrave:internal/config/open_page/requirements/grave_looting_requirements

$data modify storage hygrave:common temp.config.levels set value $(value)

## Error if value is not valid
execute unless predicate {\
  type: "minecraft:int_value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.levels"\
  },\
  test: {min: 0}\
} run return run function hygrave:internal/helper/message/error {text: {\
  "translate": "hygrave.change_config_message.grave_looting_requirements.non_owners.xp.fail",\
  "fallback": "§cValue must be a non-negative integer."\
}}

## Otherwise change values
execute store result score (requirements/grave_looting_requirements/non_owners/xp) hygrave.config run data get storage hygrave:common temp.config.levels

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "requirements/grave_looting_requirements"}