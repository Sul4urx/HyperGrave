#<< config/change/costs/grave_remote_looting_costs/non_owners/item_ids/add_item
#<< config/change/costs/grave_remote_looting_costs/non_owners/item_ids/change_list

$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": {\
        items: $(item_ids) \
      }\
    }\
  }\
} run scoreboard players set .item_id_list_is_valid hygrave.temp_var 1
$execute unless predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": {\
        items: $(item_ids) \
      }\
    }\
  }\
} run scoreboard players set .item_id_list_is_valid hygrave.temp_var 1