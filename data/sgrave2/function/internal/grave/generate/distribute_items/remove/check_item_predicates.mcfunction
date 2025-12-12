#<< grave/generate/distribute_items/remove
#<< grave/generate/distribute_items/remove/check_item_predicates

## Remove temp data
data remove storage sgrave2:common temp.args

data modify storage sgrave2:common temp.value set from storage sgrave2:common temp.config_copy.item_distribution.remove[-1]

## Check if item passes provided predicate
## and if it does, mark the item for the operation to be applied later
$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} run scoreboard players set .remove_item sgrave2.temp_var 1

## Iterate to next predicate
data modify storage sgrave2:common temp.config_copy.item_distribution.remove append from storage sgrave2:common temp.config_copy.item_distribution.remove[0]
data remove storage sgrave2:common temp.config_copy.item_distribution.remove[0]

## If none of the predicates passed,
## Don't apply the operation and exit to prevent infinite recursion
scoreboard players remove .loop_count_2 sgrave2.temp_var 1
execute if score .loop_count_2 sgrave2.temp_var matches ..0 run return -1

## Check if item passes the next predicate
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config_copy.item_distribution.remove[-1]

function sgrave2:internal/grave/generate/distribute_items/remove/check_item_predicates with storage sgrave2:common temp.args
