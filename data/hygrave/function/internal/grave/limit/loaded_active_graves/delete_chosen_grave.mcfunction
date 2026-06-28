#@> Executed from:
#@>   function hygrave:internal/grave/limit/loaded_active_graves

## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
data modify storage hygrave:common temp.mcargs.'database/graves/lookup'.gid set from entity @s item.components.minecraft:custom_data.hygrave:common.gid
function hygrave:internal/database/graves/lookup with storage hygrave:common temp.mcargs.'database/graves/lookup'

execute if score (graves/drop_contents_on_despawn) hygrave.config matches 1 run data modify storage hygrave:common graves[-1].drop_queued_contents set from storage hygrave:common graves[-1].contents

## Delete grave
data modify storage hygrave:common temp.mcargs.'database/graves/delete'.destruction_type set value "despawned"
data modify storage hygrave:common temp.mcargs.'database/graves/delete'.destroyer set value {cause: "too_many_loaded_active_graves"}

function hygrave:internal/database/graves/delete with storage hygrave:common temp.mcargs.'database/graves/delete'