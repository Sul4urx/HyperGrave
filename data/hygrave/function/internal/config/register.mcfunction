#<< loop/1t

# Register configs

## Grave Despawn Time
execute unless score (graves/despawn_time) hygrave.config matches 0.. run scoreboard players set (graves/despawn_time) hygrave.config 5400

execute store result storage hygrave:common configs.value.graves.despawn_time int 1 run scoreboard players get (graves/despawn_time) hygrave.config

data modify storage hygrave:common configs.text.graves.despawn_time set string storage hygrave:common configs.value.graves.despawn_time

## Freeze Grave Despawn Time
execute unless score (graves/freeze_grave_despawn_time) hygrave.config matches 0..1 run scoreboard players set (graves/freeze_grave_despawn_time) hygrave.config 0

execute store result storage hygrave:common configs.value.graves.freeze_grave_despawn_time byte 1 run scoreboard players get (graves/freeze_grave_despawn_time) hygrave.config

execute if data storage hygrave:common configs.value.graves{freeze_grave_despawn_time:0b} run data modify storage hygrave:common configs.text.graves.freeze_grave_despawn_time set value "§c∞"
execute if data storage hygrave:common configs.value.graves{freeze_grave_despawn_time:1b} run data modify storage hygrave:common configs.text.graves.freeze_grave_despawn_time set value "§a∞"

## Item Despawn Time
execute unless score (dropped_contents/item_despawn_time) hygrave.config matches 0.. run scoreboard players set (dropped_contents/item_despawn_time) hygrave.config 2700

execute store result storage hygrave:common configs.value.dropped_contents.item.despawn_time int 1 run scoreboard players get (dropped_contents/item_despawn_time) hygrave.config

data modify storage hygrave:common configs.text.dropped_contents.item.despawn_time set string storage hygrave:common configs.value.dropped_contents.item.despawn_time

## Freeze Item Despawn Time
execute unless score (dropped_contents/freeze_item_despawn_time) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/freeze_item_despawn_time) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.freeze_item_despawn_time byte 1 run scoreboard players get (dropped_contents/freeze_item_despawn_time) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{freeze_item_despawn_time:0b} run data modify storage hygrave:common configs.text.dropped_contents.freeze_item_despawn_time set value "§c∞"
execute if data storage hygrave:common configs.value.dropped_contents{freeze_item_despawn_time:1b} run data modify storage hygrave:common configs.text.dropped_contents.freeze_item_despawn_time set value "§a∞"

## XP Despawn Time
execute unless score (dropped_contents/xp_despawn_time) hygrave.config matches 0.. run scoreboard players set (dropped_contents/xp_despawn_time) hygrave.config 1200

execute store result storage hygrave:common configs.value.dropped_contents.xp.despawn_time int 1 run scoreboard players get (dropped_contents/xp_despawn_time) hygrave.config

data modify storage hygrave:common configs.text.dropped_contents.xp.despawn_time set string storage hygrave:common configs.value.dropped_contents.xp.despawn_time

## Freeze XP Despawn Time
execute unless score (dropped_contents/freeze_xp_despawn_time) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/freeze_xp_despawn_time) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.freeze_xp_despawn_time byte 1 run scoreboard players get (dropped_contents/freeze_xp_despawn_time) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{freeze_xp_despawn_time:0b} run data modify storage hygrave:common configs.text.dropped_contents.freeze_xp_despawn_time set value "§c∞"
execute if data storage hygrave:common configs.value.dropped_contents{freeze_xp_despawn_time:1b} run data modify storage hygrave:common configs.text.dropped_contents.freeze_xp_despawn_time set value "§a∞"

## Mod Compatibility Mode / Item Collection Distance
execute unless score (general/mod_compatibility_mode/item_collection_distance) hygrave.config matches 0..16 run scoreboard players set (general/mod_compatibility_mode/item_collection_distance) hygrave.config 4

execute store result storage hygrave:common configs.value.general.'mod_compatibility_mode/item_collection_distance' int 1 run scoreboard players get (general/mod_compatibility_mode/item_collection_distance) hygrave.config

data modify storage hygrave:common configs.text.general.'mod_compatibility_mode/item_collection_distance' set string storage hygrave:common configs.value.general.'mod_compatibility_mode/item_collection_distance'



## Change Game Rules
execute unless score (general/change_gamerules) hygrave.config matches 0..1 run scoreboard players set (general/change_gamerules) hygrave.config 1

execute store result storage hygrave:common configs.value.general.change_gamerules byte 1 run scoreboard players get (general/change_gamerules) hygrave.config

execute if data storage hygrave:common configs.value.general{change_gamerules:0b} run data modify storage hygrave:common configs.text.general.change_gamerules set value "§c❌"
execute if data storage hygrave:common configs.value.general{change_gamerules:1b} run data modify storage hygrave:common configs.text.general.change_gamerules set value "§a✔"

## Drop grave contents on despawn
execute unless score (graves/drop_contents_on_despawn) hygrave.config matches 0..1 run scoreboard players set (graves/drop_contents_on_despawn) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.drop_contents_on_despawn byte 1 run scoreboard players get (graves/drop_contents_on_despawn) hygrave.config

execute if data storage hygrave:common configs.value.graves{drop_contents_on_despawn:0b} run data modify storage hygrave:common configs.text.graves.drop_contents_on_despawn set value "§c❌"
execute if data storage hygrave:common configs.value.graves{drop_contents_on_despawn:1b} run data modify storage hygrave:common configs.text.graves.drop_contents_on_despawn set value "§a✔"

## Glowing Graves
execute unless score (graves/glowing_graves) hygrave.config matches 0..1 run scoreboard players set (graves/glowing_graves) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.glowing_graves byte 1 run scoreboard players get (graves/glowing_graves) hygrave.config

execute if data storage hygrave:common configs.value.graves{glowing_graves:0b} run data modify storage hygrave:common configs.text.graves.glowing_graves set value "§c❌"
execute if data storage hygrave:common configs.value.graves{glowing_graves:1b} run data modify storage hygrave:common configs.text.graves.glowing_graves set value "§a✔"

## Invulnerable Items
execute unless score (dropped_contents/invulnerable_items) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/invulnerable_items) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.invulnerable_items byte 1 run scoreboard players get (dropped_contents/invulnerable_items) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{invulnerable_items:0b} run data modify storage hygrave:common configs.text.dropped_contents.invulnerable_items set value "§c❌"
execute if data storage hygrave:common configs.value.dropped_contents{invulnerable_items:1b} run data modify storage hygrave:common configs.text.dropped_contents.invulnerable_items set value "§a✔"

## Invulnerable XP
execute unless score (dropped_contents/invulnerable_xp) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/invulnerable_xp) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.invulnerable_xp byte 1 run scoreboard players get (dropped_contents/invulnerable_xp) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{invulnerable_xp:0b} run data modify storage hygrave:common configs.text.dropped_contents.invulnerable_xp set value "§c❌"
execute if data storage hygrave:common configs.value.dropped_contents{invulnerable_xp:1b} run data modify storage hygrave:common configs.text.dropped_contents.invulnerable_xp set value "§a✔"

## No Gravity Items
execute unless score (dropped_contents/no_gravity_items) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/no_gravity_items) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.no_gravity_items byte 1 run scoreboard players get (dropped_contents/no_gravity_items) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{no_gravity_items:0b} run data modify storage hygrave:common configs.text.dropped_contents.no_gravity_items set value "§c❌"
execute if data storage hygrave:common configs.value.dropped_contents{no_gravity_items:1b} run data modify storage hygrave:common configs.text.dropped_contents.no_gravity_items set value "§a✔"

## No Gravity XP
execute unless score (dropped_contents/no_gravity_xp) hygrave.config matches 0..1 run scoreboard players set (dropped_contents/no_gravity_xp) hygrave.config 0

execute store result storage hygrave:common configs.value.dropped_contents.no_gravity_xp byte 1 run scoreboard players get (dropped_contents/no_gravity_xp) hygrave.config

execute if data storage hygrave:common configs.value.dropped_contents{no_gravity_xp:0b} run data modify storage hygrave:common configs.text.dropped_contents.no_gravity_xp set value "§c❌"
execute if data storage hygrave:common configs.value.dropped_contents{no_gravity_xp:1b} run data modify storage hygrave:common configs.text.dropped_contents.no_gravity_xp set value "§a✔"

## Mod Compatibility Mode
execute unless score (general/mod_compatibility_mode) hygrave.config matches 0..1 run scoreboard players set (general/mod_compatibility_mode) hygrave.config 0

execute store result storage hygrave:common configs.value.general.mod_compatibility_mode byte 1 run scoreboard players get (general/mod_compatibility_mode) hygrave.config

execute if data storage hygrave:common configs.value.general{mod_compatibility_mode:0b} run data modify storage hygrave:common configs.text.general.mod_compatibility_mode set value "§c❌"
execute if data storage hygrave:common configs.value.general{mod_compatibility_mode:1b} run data modify storage hygrave:common configs.text.general.mod_compatibility_mode set value "§a✔"

## Tell Grave Mini Info
execute unless score (graves/tell_grave_mini_info) hygrave.config matches 0..2 run scoreboard players set (graves/tell_grave_mini_info) hygrave.config 1

execute store result storage hygrave:common configs.value.graves.tell_grave_mini_info byte 1 run scoreboard players get (graves/tell_grave_mini_info) hygrave.config

execute if data storage hygrave:common configs.value.graves{tell_grave_mini_info:0b} run data modify storage hygrave:common configs.text.graves.tell_grave_mini_info set value "§cN"
execute if data storage hygrave:common configs.value.graves{tell_grave_mini_info:1b} run data modify storage hygrave:common configs.text.graves.tell_grave_mini_info set value "§eO"
execute if data storage hygrave:common configs.value.graves{tell_grave_mini_info:2b} run data modify storage hygrave:common configs.text.graves.tell_grave_mini_info set value "§aE"



## Sub-configs
function hygrave:internal/config/register/costs/grave_looting_costs
function hygrave:internal/config/register/costs/grave_remote_looting_costs
function hygrave:internal/config/register/costs/grave_generation_costs

function hygrave:internal/config/register/graves/icd
function hygrave:internal/config/register/graves/item_distribution
function hygrave:internal/config/register/graves/slot_distribution
function hygrave:internal/config/register/graves/grave_placement_restrictions
function hygrave:internal/config/register/graves/show_grave_info
function hygrave:internal/config/register/graves/text_display/text
function hygrave:internal/config/register/graves/text_display/icd_text
function hygrave:internal/config/register/graves/xp_distribution

function hygrave:internal/config/register/grave_interaction/click_behavior