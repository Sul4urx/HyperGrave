#<< config/open_page/graves/slot_distribution
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not a compound
execute unless data storage sgrave2:common temp.config{value:{}} run title @s actionbar {\
  "translate": "sgrave2.change_config_message.slot_distribution.grave_generation_success.fail",\
  "fallback": "§cThe value must be a compound."\
}

## Error if value is not valid
execute store result score .is_valid sgrave2.temp_var run function sgrave2:internal/config/change/graves/slot_distribution/grave_generation_success/check_value with storage sgrave2:common temp.config

execute if data storage sgrave2:common temp.config{value:{}} unless score .is_valid sgrave2.temp_var matches 1 run title @s actionbar {\
  "translate": "sgrave2.change_config_message.slot_distribution.grave_generation_success.fail",\
  "fallback": "§cAll slots must be valid."\
}

## Otherwise success
execute if data storage sgrave2:common temp.config{value:{}} if score .is_valid sgrave2.temp_var matches 1 run title @s actionbar {\
  "translate": "sgrave2.change_config_message.slot_distribution.grave_generation_success.success",\
  "fallback": "Successfully changed the value."\
}

## If success, change value
execute if data storage sgrave2:common temp.config{value:{}} if score .is_valid sgrave2.temp_var matches 1 run data modify storage sgrave2:common configs.text.graves.slot_distribution.grave_generation_success set from storage sgrave2:common temp.config.value
execute if data storage sgrave2:common temp.config{value:{}} if score .is_valid sgrave2.temp_var matches 1 run data modify storage sgrave2:common configs.value.graves.slot_distribution.grave_generation_success set value {}
execute if data storage sgrave2:common temp.config{value:{}} if score .is_valid sgrave2.temp_var matches 1 run function sgrave2:internal/config/change/graves/slot_distribution/grave_generation_success/translate_value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/slot_distribution