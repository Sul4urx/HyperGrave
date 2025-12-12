## Store the operation
$data modify storage hygrave:common temp.out.slot_operation set from storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success."$(slot)"

## Return the operation
## -32767 -> default
## 11 -> keep
## 18 -> remove
## 20 -> take
execute if data storage hygrave:common temp.out{slot_operation: "keep"} run return 11
execute if data storage hygrave:common temp.out{slot_operation: "remove"} run return 18
execute if data storage hygrave:common temp.out{slot_operation: "take"} run return 20

return -32767