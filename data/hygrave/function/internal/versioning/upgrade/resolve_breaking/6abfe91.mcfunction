#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/from_0_5_0

# commit 6abfe91
# "refactor(config)!: refactor config graves/icd to grave_interaction/icd_properties"
scoreboard players operation (grave_interaction/icd_properties/activate_for) hygrave.config = (graves/icd/activate_for) hygrave.config
scoreboard players operation (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config = (graves/icd/item_cycle_cooldown) hygrave.config
scoreboard players operation (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config = (graves/icd/revert_sneaking_behavior) hygrave.config
scoreboard players operation (grave_interaction/icd_properties/switch_text_display) hygrave.config = (graves/icd/switch_text_display) hygrave.config

scoreboard players reset (graves/icd/activate_for) hygrave.config
scoreboard players reset (graves/icd/item_cycle_cooldown) hygrave.config
scoreboard players reset (graves/icd/revert_sneaking_behavior) hygrave.config
scoreboard players reset (graves/icd/switch_text_display) hygrave.config

data remove storage hygrave:common configs.value.graves.icd
data remove storage hygrave:common configs.text.graves.icd