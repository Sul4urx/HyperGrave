#<< config/open_page/costs/grave_generation_costs
$data modify storage hygrave:common temp.config.value set value "$(value)"

## Error if list is not valid
$function hygrave:internal/config/change/costs/grave_generation_costs/with_item/item_ids/check_item_ids {item_ids:["$(value)"]}

execute unless score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_generation_costs.with_item.add_item.fail.not_valid",\
  "fallback": "§cInvalid item ID."\
}

## Otherwise success
$execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_generation_costs.with_item.add_item.success",\
  "fallback": "Successfully added item %s to the list.",\
  "with": ["$(value)"]\
}

## If success, change value
execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.value.costs.grave_generation_costs.with_item.item_ids append from storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_generation_costs