#<< config/open_page/requirements/grave_generation_requirements
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0, max: 100}\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_generation_requirements.no_item.xp.fail",\
  "fallback": "§cThe value must be an integer between 0 and 100 (inclusive)."\
}

## Otherwise change values
execute store result score (requirements/grave_generation_requirements/no_item/xp) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/requirements/grave_generation_requirements