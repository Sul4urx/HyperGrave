#@> Executed from:
#@>   function hygrave:internal/loop/1t

## Change game rules so that HyperGrave can work properly
execute if score (general/change_gamerules) hygrave.config matches 1 if score (general/mod_compatibility_mode) hygrave.config matches 0 run function hygrave:internal/helper/gamerule/keep_inventory/enable
execute if score (general/change_gamerules) hygrave.config matches 1 run function hygrave:internal/helper/gamerule/immediate_respawn/disable