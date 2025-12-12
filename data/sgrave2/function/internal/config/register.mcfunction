#<< loop/1t

# Register configs

## Grave Despawn Time
execute unless score (graves/despawn_time) sgrave2.config matches 0.. run scoreboard players set (graves/despawn_time) sgrave2.config 5400

execute store result storage sgrave2:common configs.value.graves.despawn_time int 1 run scoreboard players get (graves/despawn_time) sgrave2.config

data modify storage sgrave2:common configs.text.graves.despawn_time set string storage sgrave2:common configs.value.graves.despawn_time

## Item Despawn Time
execute unless score (dropped_contents/item_despawn_time) sgrave2.config matches 0.. run scoreboard players set (dropped_contents/item_despawn_time) sgrave2.config 2700

execute store result storage sgrave2:common configs.value.dropped_contents.item.despawn_time int 1 run scoreboard players get (dropped_contents/item_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.text.dropped_contents.item.despawn_time set string storage sgrave2:common configs.value.dropped_contents.item.despawn_time

## XP Despawn Time
execute unless score (dropped_contents/xp_despawn_time) sgrave2.config matches 0.. run scoreboard players set (dropped_contents/xp_despawn_time) sgrave2.config 1200

execute store result storage sgrave2:common configs.value.dropped_contents.xp.despawn_time int 1 run scoreboard players get (dropped_contents/xp_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.text.dropped_contents.xp.despawn_time set string storage sgrave2:common configs.value.dropped_contents.xp.despawn_time

## Mod Compatibility Mode / Item Collection Distance
execute unless score (general/mod_compatibility_mode/item_collection_distance) sgrave2.config matches 0..16 run scoreboard players set (general/mod_compatibility_mode/item_collection_distance) sgrave2.config 4

execute store result storage sgrave2:common configs.value.general.'mod_compatibility_mode/item_collection_distance' int 1 run scoreboard players get (general/mod_compatibility_mode/item_collection_distance) sgrave2.config

data modify storage sgrave2:common configs.text.general.'mod_compatibility_mode/item_collection_distance' set string storage sgrave2:common configs.value.general.'mod_compatibility_mode/item_collection_distance'



## Change Game Rules
execute unless score (general/change_gamerules) sgrave2.config matches 0..1 run scoreboard players set (general/change_gamerules) sgrave2.config 1

execute store result storage sgrave2:common configs.value.general.change_gamerules byte 1 run scoreboard players get (general/change_gamerules) sgrave2.config

execute if data storage sgrave2:common configs.value.general{change_gamerules:0b} run data modify storage sgrave2:common configs.text.general.change_gamerules set value "§c❌"
execute if data storage sgrave2:common configs.value.general{change_gamerules:1b} run data modify storage sgrave2:common configs.text.general.change_gamerules set value "§a✔"

## Glowing Graves
execute unless score (graves/glowing_graves) sgrave2.config matches 0..1 run scoreboard players set (graves/glowing_graves) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.glowing_graves byte 1 run scoreboard players get (graves/glowing_graves) sgrave2.config

execute if data storage sgrave2:common configs.value.graves{glowing_graves:0b} run data modify storage sgrave2:common configs.text.graves.glowing_graves set value "§c❌"
execute if data storage sgrave2:common configs.value.graves{glowing_graves:1b} run data modify storage sgrave2:common configs.text.graves.glowing_graves set value "§a✔"

## Mod Compatibility Mode
execute unless score (general/mod_compatibility_mode) sgrave2.config matches 0..1 run scoreboard players set (general/mod_compatibility_mode) sgrave2.config 0

execute store result storage sgrave2:common configs.value.general.mod_compatibility_mode byte 1 run scoreboard players get (general/mod_compatibility_mode) sgrave2.config

execute if data storage sgrave2:common configs.value.general{mod_compatibility_mode:0b} run data modify storage sgrave2:common configs.text.general.mod_compatibility_mode set value "§c❌"
execute if data storage sgrave2:common configs.value.general{mod_compatibility_mode:1b} run data modify storage sgrave2:common configs.text.general.mod_compatibility_mode set value "§a✔"

## Tell Grave Mini Info
execute unless score (graves/tell_grave_mini_info) sgrave2.config matches 0..2 run scoreboard players set (graves/tell_grave_mini_info) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.tell_grave_mini_info byte 1 run scoreboard players get (graves/tell_grave_mini_info) sgrave2.config

execute if data storage sgrave2:common configs.value.graves{tell_grave_mini_info:0b} run data modify storage sgrave2:common configs.text.graves.tell_grave_mini_info set value "§cN"
execute if data storage sgrave2:common configs.value.graves{tell_grave_mini_info:1b} run data modify storage sgrave2:common configs.text.graves.tell_grave_mini_info set value "§eO"
execute if data storage sgrave2:common configs.value.graves{tell_grave_mini_info:2b} run data modify storage sgrave2:common configs.text.graves.tell_grave_mini_info set value "§aE"



## Sub-configs
function sgrave2:internal/config/register/costs/grave_opening_costs
function sgrave2:internal/config/register/costs/grave_ropening_costs
function sgrave2:internal/config/register/costs/grave_generation_costs

function sgrave2:internal/config/register/graves/icd
function sgrave2:internal/config/register/graves/item_distribution
function sgrave2:internal/config/register/graves/grave_placement_restrictions
function sgrave2:internal/config/register/graves/show_grave_info
function sgrave2:internal/config/register/graves/text_display
function sgrave2:internal/config/register/graves/xp_distribution