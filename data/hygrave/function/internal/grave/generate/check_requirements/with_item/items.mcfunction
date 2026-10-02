#@> Executed from:
#@>   function hygrave:internal/grave/generate/check_requirements/with_item

## Check if item passes provided predicate
## If it does, set .check_requirements.items score to true

## If the predicate doesn't pass,
## .check_requirements.items score will remain false
$execute if predicate {\
  type: "minecraft:any_of",\
  terms: [\
    {\
      type: "minecraft:entity_properties",\
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
      type: "minecraft:entity_properties",\
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
      type: "minecraft:entity_properties",\
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
} run scoreboard players set .check_requirements.items hygrave.temp_var 1