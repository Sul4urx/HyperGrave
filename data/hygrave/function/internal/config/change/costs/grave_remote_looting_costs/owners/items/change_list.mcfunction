#<< config/open_page/costs/grave_remote_looting_costs
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if value is not list
execute unless data storage hygrave:common temp.config.value[] unless data storage hygrave:common temp.config{value:[]} run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_remote_looting_costs.owners.items.change_list.fail.not_a_list",\
  "fallback": "§cIncorrect format: Not a list"\
}

## Error if list is not valid
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.config.value[]
data modify storage hygrave:common temp.config.value_copy set from storage hygrave:common temp.config.value
data modify storage hygrave:common temp.args.value set from storage hygrave:common temp.config.value_copy[-1]

scoreboard players set .list_is_valid hygrave.temp_var 0

function hygrave:internal/config/change/costs/grave_remote_looting_costs/owners/items/change_list/check_value with storage hygrave:common temp.args

execute if data storage hygrave:common temp.config.value[] unless score .list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_remote_looting_costs.owners.items.change_list.fail.not_valid",\
  "fallback": "§cIncorrect format: At least one of the predicates is invalid."\
}

## Otherwise success
execute if data storage hygrave:common temp.config.value[] if score .list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_remote_looting_costs.owners.items.change_list.success",\
  "fallback": "Successfully changed the list."\
}

execute if data storage hygrave:common temp.config{value:[]} run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_remote_looting_costs.owners.items.change_list.success",\
  "fallback": "Successfully changed the list."\
}

## If success, change value
execute if data storage hygrave:common temp.config.value[] if score .list_is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.items set from storage hygrave:common temp.config.value
execute if data storage hygrave:common temp.config{value:[]} run data modify storage hygrave:common configs.value.costs.grave_remote_looting_costs.owners.items set value []

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_remote_looting_costs