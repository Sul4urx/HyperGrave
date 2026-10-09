#@> Executed on load

# This data pack is made by Sul4ur

# About parent comments:
#
# Most functions have parent comments (comments starting with '#@>').
# They show the parent functions of the function.
# These comments are generated from a custom script (with some manual modifications).
# Simple shell-style wildcards ('*', '?' and '**') are also used in those comments.
#
# Parent function: All functions that call a function are parent functions of that function.
#
# These comments do not nessecarily show all parent function. For example,
# the parent comment in function 'hygrave:internal/config/register' only lists one function,
# despite the fact that this function has over 150 parent functions!
#
# Some functions have a parent comment like "#@> !NO_PCOMMENT". That doesn't mean that they're unused, that just
# means I don't want those functions to show its parent functions,
# For example, functions in 'hygrave:internal/helper/**/*' have this parent comment, because
# they're supposed to and can be used anywhere as helper functions
# and it also tells the script that this function should not have a parent comment

## Internal scores

##> Temp score
scoreboard objectives add hygrave.temp_var dummy

##> Constant score (Used for storing numbers)
scoreboard objectives add hygrave.var dummy

##> Data version (Used for storing and reading the version of HyperGrave)
scoreboard objectives add hygrave.data_version dummy

##> Config score
scoreboard objectives add hygrave.config dummy

##> ID scores (Backup, Grave and Player IDs, respectively)
scoreboard objectives add hygrave.bid dummy
scoreboard objectives add hygrave.gid dummy
scoreboard objectives add hygrave.pid dummy

##> Despawn time
scoreboard objectives add hygrave.despawn_time dummy

##> Death count (used to detect player death)
scoreboard objectives add hygrave.death_count deathCount

##> ICD cooldown
scoreboard objectives add hygrave.icd.cooldown dummy

##> Rotation cooldown (used to control rotating objects)
scoreboard objectives add hygrave.rotation_cooldown dummy

##> Text display update cooldown (used to update text displays of graves)
scoreboard objectives add hygrave.text_display_update_cooldown dummy

##> Grave Locator

##>> Actionbar pause ticks (Used to display messages without the little ui
##>> interrupting the message)
scoreboard objectives add hygrave.item.grave_locator.actionbar_pause_ticks dummy

##>> Ticks using grave locator
##>> Used to stop repeating use action
scoreboard objectives add hygrave.item.grave_locator.ticks_using_item dummy

##>> Previous value of hygrave.item.grave_locator.ticks_using_item
##>> Used to detect if the player isn't using the item anymore
scoreboard objectives add hygrave.previous.item.grave_locator.ticks_using_item dummy

##>> Ticks passed after holding grave locator
scoreboard objectives add hygrave.item.grave_locator.ticks_not_holding_item dummy

##>> Grave locator use cooldown
scoreboard objectives add hygrave.item.grave_locator.use_cooldown dummy


## Trigger scores

##> Show grave info
scoreboard objectives add hygrave.show_grave_info trigger

##> Show grave list
scoreboard objectives add hygrave.show_grave_list trigger

##>> View next and view previous
scoreboard objectives add hygrave.show_grave_info.view_next trigger
scoreboard objectives add hygrave.show_grave_info.view_previous trigger

##> Remotely loot graves
scoreboard objectives add hygrave.remote_loot_grave trigger

##> Locate grave
scoreboard objectives add hygrave.locate trigger

##> Info and Help
scoreboard objectives add hygrave.info trigger
scoreboard objectives add hygrave.help trigger

## Alpha version (Deprecated)
scoreboard players set (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version 0

## Handle upgrades and downgrades
execute if score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if data storage hygrave:common data.schema_version_1 unless data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 3, patch: 1} run return run function hygrave:internal/versioning/unsupported/alpha_version_change

execute if data storage hygrave:common data.latest_schema_version unless data storage hygrave:common data{latest_schema_version:1} run return run function hygrave:internal/versioning/unsupported/unknown_version

execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 unless data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 3, patch: 1} run return run function hygrave:internal/versioning/upgrade

execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=major,schema_version=1) hygrave.data_version matches 3.. run return run function hygrave:internal/versioning/unsupported/downgrade_not_supported
execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=minor,schema_version=1) hygrave.data_version matches 4.. run return run function hygrave:internal/versioning/unsupported/downgrade_not_supported
execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=patch,schema_version=1) hygrave.data_version matches 2.. run return run function hygrave:internal/versioning/downgrade

## Data version
function hygrave:internal/misc/store_data_version

## Determine command versions
function hygrave:internal/misc/determine_commands

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t