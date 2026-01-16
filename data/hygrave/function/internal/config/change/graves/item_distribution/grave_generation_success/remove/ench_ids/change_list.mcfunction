#<< config/open_page/graves/item_distribution
$data modify storage hygrave:common temp.config.value set value $(value)

## Error if list is not valid
$function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/check_ench_ids {ench_ids:$(value)}

execute unless score .ench_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.remove_enchs.change_list.fail.not_valid",\
  "fallback": "§cIncorrect format: At least one of the enchantment IDs is invalid."\
}

## Otherwise success
execute if score .ench_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.remove_enchs.change_list.success",\
  "fallback": "Successfully changed the list."\
}

## If success, change value
execute if score .ench_id_list_is_valid hygrave.temp_var matches 1 run data modify storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_enchs set from storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/item_distribution