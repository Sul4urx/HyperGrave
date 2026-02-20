#<< config/register

# Register sub-configs for ICD config

## Activate For
execute unless score (grave_interaction/icd_properties/activate_for) hygrave.config matches 0..2 run scoreboard players set (grave_interaction/icd_properties/activate_for) hygrave.config 1

execute store result storage hygrave:common configs.value.grave_interaction.icd_properties.activate_for byte 1 run scoreboard players get (grave_interaction/icd_properties/activate_for) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{activate_for:0b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.activate_for set value "§cN"
execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{activate_for:1b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.activate_for set value "§eO"
execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{activate_for:2b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.activate_for set value "§aE"

## Switch Text Display
execute unless score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 0..1 run scoreboard players set (grave_interaction/icd_properties/switch_text_display) hygrave.config 1

execute store result storage hygrave:common configs.value.grave_interaction.icd_properties.switch_text_display byte 1 run scoreboard players get (grave_interaction/icd_properties/switch_text_display) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{switch_text_display:0b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.switch_text_display set value "§c❌"
execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{switch_text_display:1b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.switch_text_display set value "§a✔"

execute unless score (grave_interaction/icd_properties/switch_text_display) hygrave.config matches 0..1 run scoreboard players set (grave_interaction/icd_properties/switch_text_display) hygrave.config 1

## Item Cycle Cooldown
execute unless score (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config matches 0..160 run scoreboard players set (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config 20

execute store result storage hygrave:common configs.value.grave_interaction.icd_properties.item_cycle_cooldown int 1 run scoreboard players get (grave_interaction/icd_properties/item_cycle_cooldown) hygrave.config

data modify storage hygrave:common configs.text.grave_interaction.icd_properties.item_cycle_cooldown set string storage hygrave:common configs.value.grave_interaction.icd_properties.item_cycle_cooldown

## Requires Sneaking
execute unless score (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config matches 0..1 run scoreboard players set (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_interaction.icd_properties.revert_sneaking_behavior byte 1 run scoreboard players get (grave_interaction/icd_properties/revert_sneaking_behavior) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{revert_sneaking_behavior:0b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.revert_sneaking_behavior set value "§c❌"
execute if data storage hygrave:common configs.value.grave_interaction.icd_properties{revert_sneaking_behavior:1b} run data modify storage hygrave:common configs.text.grave_interaction.icd_properties.revert_sneaking_behavior set value "§a✔"