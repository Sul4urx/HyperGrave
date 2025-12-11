#<< loop/1t

## Change game rules so that SGrave can work properly
execute if score (general/change_gamerules) sgrave2.config matches 1 if score (general/mod_compatibility_mode) sgrave2.config matches 0 run gamerule minecraft:keep_inventory true
execute if score (general/change_gamerules) sgrave2.config matches 1 run gamerule minecraft:immediate_respawn false