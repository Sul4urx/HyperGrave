#<< loop/1t

## Change game rules so that HyperGrave can work properly
execute if score (general/change_gamerules) hygrave.config matches 1 if score (general/mod_compatibility_mode) hygrave.config matches 0 run gamerule keepInventory true
execute if score (general/change_gamerules) hygrave.config matches 1 run gamerule doImmediateRespawn false