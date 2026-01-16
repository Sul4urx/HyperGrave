#<< config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/add_item
#<< config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/change_list

$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": {\
        predicates: {\
          "minecraft:enchantments": [\
            {\
              enchantments: $(ench_ids) \
            }\
          ]\
        }\
      }\
    }\
  }\
} run scoreboard players set .ench_id_list_is_valid hygrave.temp_var 1
$execute unless predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": {\
        predicates: {\
          "minecraft:enchantments": [\
            {\
              enchantments: $(ench_ids) \
            }\
          ]\
        }\
      }\
    }\
  }\
} run scoreboard players set .ench_id_list_is_valid hygrave.temp_var 1