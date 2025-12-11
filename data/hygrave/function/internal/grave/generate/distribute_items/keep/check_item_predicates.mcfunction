#<< grave/generate/distribute_items/keep
#<< grave/generate/distribute_items/keep/check_item_predicates

## Remove temp data
data remove storage hygrave:common temp.args

data modify storage hygrave:common temp.value set from storage hygrave:common temp.config_copy.item_distribution.keep[-1]

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
} run scoreboard players set .keep_item hygrave.temp_var 1

## Iterate to next predicate
data modify storage hygrave:common temp.config_copy.item_distribution.keep append from storage hygrave:common temp.config_copy.item_distribution.keep[0]
data remove storage hygrave:common temp.config_copy.item_distribution.keep[0]

## If none of the predicates passed,
## Don't apply the operation and exit to prevent infinite recursion
scoreboard players remove .loop_count_2 hygrave.temp_var 1
execute if score .loop_count_2 hygrave.temp_var matches ..0 run return -1

## Check if item passes the next predicate
data modify storage hygrave:common temp.args.value set from storage hygrave:common temp.config_copy.item_distribution.keep[-1]

function hygrave:internal/grave/generate/distribute_items/keep/check_item_predicates with storage hygrave:common temp.args
