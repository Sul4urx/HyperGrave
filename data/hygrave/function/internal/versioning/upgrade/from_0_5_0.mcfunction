#@> Executed from:
#@>   function hygrave:internal/load

## Resolve breaking changes

##> commit eeadb3a "refactor(config)!: refactor config glowing_graves"
scoreboard players operation (grave_appearance/grave_model/player_head/glowing) hygrave.config = (graves/glowing_graves) hygrave.config

scoreboard players reset (graves/glowing_graves) hygrave.config

data remove storage hygrave:common configs.value.graves.glowing_graves
data remove storage hygrave:common configs.text.graves.glowing_graves

##> commit 6abfe91 "refactor(config)!: refactor config graves/icd to grave_interaction/icd_properties"
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

##> commit aa5215b "rename(config)!: move and refactor config Text Display Properties"
data modify storage hygrave:common configs.value.grave_appearance.text_display_properties set from storage hygrave:common configs.value.graves.text_display
data modify storage hygrave:common configs.text.grave_appearance.text_display_properties set from storage hygrave:common configs.text.graves.text_display

data remove storage hygrave:common configs.value.graves.text_display
data remove storage hygrave:common configs.text.graves.text_display

##> commit 9f5b72d "feat: add data.items data to grave maps"
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common graves[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/versioning/upgrade/from_0_5_0/9f5b72d/loop

## Data version
function hygrave:internal/misc/store_data_version

## Success message
tellraw @a {\
  "translate": "hygrave.versioning.successful_upgrade.from_0_5_0_to_2_0_0",\
  "fallback": "\n§aSuccessfully upgraded HyperGrave 0.5.0 to 2.0.0.\nYou do not need to do anything else. Enjoy!\n"\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t