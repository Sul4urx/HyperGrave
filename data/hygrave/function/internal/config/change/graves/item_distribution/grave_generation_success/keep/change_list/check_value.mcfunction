#<< config/change/graves/item_distribution/grave_generation_success/keep/change_list

## Check if provided sub-predicate is valid
scoreboard players set .predicate_is_valid hygrave.temp_var 0

$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} run scoreboard players set .predicate_is_valid hygrave.temp_var 1
$execute unless predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} run scoreboard players set .predicate_is_valid hygrave.temp_var 1

## If not valid, mark this predicate as not valid
execute unless score .predicate_is_valid hygrave.temp_var matches 1 run return fail

## Iterate to next predicate
data modify storage hygrave:common temp.config.value_copy append from storage hygrave:common temp.config.value_copy[0]
data remove storage hygrave:common temp.config.value_copy[0]

## If all predicates passed,
## Mark the list as valid and exit to prevent infinite recursion
scoreboard players remove .loop_count hygrave.temp_var 1
execute if score .loop_count hygrave.temp_var matches ..0 run return run scoreboard players set .list_is_valid hygrave.temp_var 1

## Check if the next predicate is valid
## If not, mark this predicate as not valid
## This will also make all previous predicates marked as not valid
## Which means that the list will be marked as not valid
##
## In other words:
## Each iteration in this recursive loop will check if the next iteration succeeds or fails
## If the next iteration fails, the current one also fails
## And when the current iteration fails, the previous iteration will also fail
## Until the whole list fails
data modify storage hygrave:common temp.args.value set from storage hygrave:common temp.config.value_copy[-1]

function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/change_list/check_value with storage hygrave:common temp.args

execute unless score .predicate_is_valid hygrave.temp_var matches 1 run return fail

## Prevent infinite recursion
execute if score .list_is_valid hygrave.temp_var matches 1 run return 1