#<< grave/generate/check_costs/with_item

## Check if item passes provided predicate
## If it does, set .check_costs.items score to true

## If the predicate doesn't pass,
## .check_costs.items score will remain false
$execute if data storage hygrave:common configs.value.costs.grave_generation_costs.with_item.item_ids[0] if predicate {\
  condition: "minecraft:any_of",\
  terms: [\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "container.*": {\
            items: $(item_ids) \
          }\
        }\
      }\
    },\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "armor.*": {\
            items: $(item_ids) \
          }\
        }\
      }\
    },\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "weapon.offhand": {\
            items: $(item_ids) \
          }\
        }\
      }\
    }\
  ]\
} run scoreboard players set .check_costs.items hygrave.temp_var 1