#<< grave/remote_unpack/check_costs/owners

## Check if item passes provided predicate
## If it does, set .check_costs.items score to true

## If the predicate doesn't pass,
## .check_costs.items score will remain false
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
} run scoreboard players set .check_costs.items hygrave.temp_var 1