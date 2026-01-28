#<< grave/unpack/check_requirements/non_owners

## Check if item passes provided predicate
## If it does, set .check_requirements.items score to true

## If the predicate doesn't pass,
## .check_requirements.items score will remain false
$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "weapon.mainhand": {\
        items: $(item_ids),\
        count: {min: $(item_remove_count)}\
      }\
    }\
  }\
} run scoreboard players set .check_requirements.items hygrave.temp_var 1