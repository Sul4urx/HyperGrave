#<< config/open_page/costs/grave_looting_costs
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
  "translate": "hygrave.change_config_message.grave_looting_costs.owners.item_remove_count.fail",\
  "fallback": "§cValue must be a non-negative integer."\
}

## Otherwise change values
execute store result score (costs/grave_looting_costs/owners/item_remove_count) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_looting_costs