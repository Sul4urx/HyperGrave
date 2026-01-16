#<< config/change/graves/item_distribution/grave_generation_success/remove/item_ids/remove_item_index

## Error if item does not exist
$execute if data storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_items[$(index)] run scoreboard players set .item_id_list_is_valid hygrave.temp_var 1

execute unless score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.remove.remove_item_index.fail.no_exist",\
  "fallback": "§cThe list is either empty or index is out of range."\
}

## Otherwise success
$execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.item_distribution.grave_generation_success.remove.remove_item_index.success",\
  "fallback": "Successfully removed item %s from the list.",\
  "with": [\
    {\
      "nbt": "configs.value.graves.item_distribution.grave_generation_success.remove_items[$(index)]",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## If success, change value
$execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run data remove storage hygrave:common configs.value.graves.item_distribution.grave_generation_success.remove_items[$(index)]