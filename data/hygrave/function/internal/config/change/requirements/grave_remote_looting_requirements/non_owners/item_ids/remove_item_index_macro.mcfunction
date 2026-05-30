#@> Executed from:
#@>   function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/item_ids/remove_item_index

## Error if item does not exist
$execute if data storage hygrave:common configs.value.requirements.grave_remote_looting_requirements.non_owners.item_ids[$(index)] run scoreboard players set .item_id_list_is_valid hygrave.temp_var 1

execute unless score .item_id_list_is_valid hygrave.temp_var matches 1 run title @s actionbar {\
  "translate": "hygrave.change_config_message.grave_remote_looting_requirements.non_owners.remove_item_index.fail.no_exist",\
  "fallback": "§cThe list is either empty or index is out of range."\
}

## If success, change value
$execute if score .item_id_list_is_valid hygrave.temp_var matches 1 run data remove storage hygrave:common configs.value.requirements.grave_remote_looting_requirements.non_owners.item_ids[$(index)]