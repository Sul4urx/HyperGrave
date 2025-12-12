## Store the operation
$data modify storage sgrave2:common temp.out.slot_operation set from storage sgrave2:common configs.value.graves.slot_distribution.grave_generation_success."$(slot)"

## Return the operation
## 127 -> default
## 2 -> remove
## 3 -> keep
## 4 -> take
execute if data storage sgrave2:common temp.out{slot_operation: "remove"} run return 2
execute if data storage sgrave2:common temp.out{slot_operation: "keep"} run return 3
execute if data storage sgrave2:common temp.out{slot_operation: "take"} run return 4

return 127