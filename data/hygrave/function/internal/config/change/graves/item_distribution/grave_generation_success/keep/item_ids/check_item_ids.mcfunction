#<< config/change/graves/item_distribution/grave_generation_success/keep/item_ids/add_item
#<< config/change/graves/item_distribution/grave_generation_success/keep/item_ids/change_list

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