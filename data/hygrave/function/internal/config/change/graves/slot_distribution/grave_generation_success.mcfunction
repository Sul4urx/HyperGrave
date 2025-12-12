#<< config/open_page/graves/slot_distribution
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not a compound
execute unless data storage hygrave:common temp.config{value:{}} run title @s actionbar {\
  "translate": "hygrave.change_config_message.slot_distribution.grave_generation_success.fail",\
  "fallback": "§cThe value must be a compound."\
}

## Error if value is not valid
execute store result score .is_valid hygrave.temp_var run function hygrave:internal/config/change/graves/slot_distribution/grave_generation_success/check_value with storage hygrave:common temp.config

execute if data storage hygrave:common temp.config{value:{}} unless score .is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.slot_distribution.grave_generation_success.fail",\
  "fallback": "§cAll slots must be valid."\
}

## Otherwise success
execute if data storage hygrave:common temp.config{value:{}} if score .is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.slot_distribution.grave_generation_success.success",\
  "fallback": "Successfully changed the value."\
}

## If success, change value
execute if data storage hygrave:common temp.config{value:{}} if score .is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.text.graves.slot_distribution.grave_generation_success set from storage hygrave:common temp.config.value
execute if data storage hygrave:common temp.config{value:{}} if score .is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success set value {}
execute if data storage hygrave:common temp.config{value:{}} if score .is_valid hygrave.temp_var matches 1 run function hygrave:internal/config/change/graves/slot_distribution/grave_generation_success/translate_value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/slot_distribution