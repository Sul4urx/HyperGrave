#<< grave/generate/cancel

## Distribute XP
function sgrave2:internal/grave/generate/cancel/distribute_xp

## Apply operation on item
## The operation can be 'keep' or 'remove',
## depending on the following config:
## Grave / Item Distribution / Grave Generation Fail / Operation
execute if score (graves/item_distribution/grave_generation_fail/operation) sgrave2.config matches 0 run function sgrave2:internal/grave/generate/cancel/clear_player_inv

## Cancel grave generating process
kill @e[tag=sgrave2.temp.grave.base]
kill @e[tag=sgrave2.temp.grave.player_head]