#<< config/open_page/graves/slot_distribution

## Toggle value
$execute unless data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'remove'} unless data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'keep'} unless data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'take'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 'r'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'remove'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 'k'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'keep'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 't'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'take'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value '-'

$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': '-'} run data remove storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'r'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 'remove'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 'k'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 'keep'
$execute if data storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success{'$(slot)': 't'} run data modify storage hygrave:common configs.value.graves.slot_distribution.grave_generation_success.'$(slot)' set value 'take'

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/slot_distribution