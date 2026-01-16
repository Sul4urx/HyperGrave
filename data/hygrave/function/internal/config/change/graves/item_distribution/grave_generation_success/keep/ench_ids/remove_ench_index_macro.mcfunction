#<< config/change/graves/item_distribution/grave_generation_success/keep/ench_ids/remove_ench_index

## Error if item does not exist
$execute if data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_enchs[$(index)] run scoreboard players set .ench_id_list_is_valid hygrave.temp_var 1

execute unless score .ench_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.keep.remove_ench_index.fail.no_exist",\
  "fallback": "§cThe list is either empty or index is out of range."\
}

## Otherwise success
$execute if score .ench_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.keep.remove_ench_index.success",\
  "fallback": "Successfully removed enchantment %s from the list.",\
  "with": [\
    {\
      "nbt": "configs.value.graves.item_distribution.grave_generation_success.keep_enchs[$(index)]",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## If success, change value
$execute if score .ench_id_list_is_valid hygrave.temp_var matches 1 run data remove storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.keep_enchs[$(index)]