#<< grave/generate/check_costs/with_item

## Check if item passes provided predicate
## If it does, set .check_costs.items score to true

## If no predicates pass,
## .check_costs.items score will remain false
$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} run scoreboard players set .check_costs.items hygrave.temp_var 1
$execute if predicate {\
  condition: "minecraft:any_of",\
  terms: [\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "container.*": $(value)\
        }\
      }\
    },\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "armor.*": $(value)\
        }\
      }\
    },\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          "weapon.offhand": $(value)\
        }\
      }\
    }\
  ]\
} run return run scoreboard players set .check_costs.items hygrave.temp_var 1

## Iterate to next predicate
data modify storage hygrave:common temp.config_copy.items append from storage hygrave:common temp.config_copy.items[0]
data remove storage hygrave:common temp.config_copy.items[0]

## Remove temp data
data remove storage hygrave:common temp.args

## If all predicates have been checked,
## Exit to prevent infinite recursion
scoreboard players remove .loop_count hygrave.temp_var 1
execute if score .loop_count hygrave.temp_var matches ..0 run return -1

## Check if item passes the next predicate
data modify storage hygrave:common temp.args.value set from storage hygrave:common temp.config_copy.items[-1]

function hygrave:internal/grave/generate/check_costs/with_item/items with storage hygrave:common temp.args
