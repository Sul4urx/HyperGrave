#@> Executed from:
#@>   function hygrave:internal/grave/generate

## Distribute XP
function hygrave:internal/grave/generate/cancel/distribute_xp

## Apply operation on item
## The operation can be 'keep' or 'remove',
## depending on the following config:
## Grave / Item Distribution / Grave Generation Fail / Operation
execute if score (graves/item_distribution/grave_generation_fail/operation) hygrave.config matches 0 run function hygrave:internal/grave/generate/cancel/clear_player_inv
execute as @n[tag=hygrave.temp.grave.base] at @s if score (graves/item_distribution/grave_generation_fail/operation) hygrave.config matches 2 run function hygrave:internal/grave/generate/cancel/drop_items
execute if score (graves/item_distribution/grave_generation_fail/operation) hygrave.config matches 2 run function hygrave:internal/grave/generate/cancel/clear_player_inv

## Cancel grave generating process
kill @e[tag=hygrave.temp.grave.base]
kill @e[tag=hygrave.temp.grave.player_head]