#@> Executed from:
#@>   function hygrave:internal/grave/despawn_time/delete_grave
#@>   function hygrave:internal/grave/limit/loaded_active_graves/delete_chosen_grave
#@>   function hygrave:internal/grave/pop
#@>   function hygrave:internal/grave/unpack
#@>   function hygrave:internal/grave/remote_unpack
#@>   function hygrave:run/grave/admin/remote_loot

## Clear all items
data modify storage hygrave:common graves[-1].contents.items set value []

## Update status
$data modify storage hygrave:common graves[-1].data.status set value {destroyed:1b,destruction_type:"$(destruction_type)", destroyer: $(destroyer)}

function hygrave:internal/database/graves/delete/update_status with storage hygrave:common graves[-1].data