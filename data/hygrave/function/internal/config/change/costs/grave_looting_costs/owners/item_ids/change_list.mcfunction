#<< config/open_page/costs/grave_looting_costs
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if list is not valid
$function hygrave:internal/config/change/costs/grave_looting_costs/owners/item_ids/check_item_ids {item_ids:$(value)}

execute unless score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_looting_costs.owners.item_ids.change_list.fail.not_valid",\
  "fallback": "§cIncorrect format: At least one of the item IDs is invalid."\
}

## Otherwise success
execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_looting_costs.owners.item_ids.change_list.success",\
  "fallback": "Successfully changed the list."\
}

## If success, change value
execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.value.costs.grave_looting_costs.owners.item_ids set from storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_looting_costs