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
# despite the fact that this function has 150 parent functions!
#
# Some functions do not have a parent comment. That doesn't mean that they're unused, that just
# means I don't want those functions to show its parent functions,
# For example, functions in 'hygrave:internal/macro/**/*' don't have parent comments, because
# they're supposed to and can be used anywhere as helper functions.

#@> Executed on load

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


## Trigger scores

##> Show grave info
scoreboard objectives add hygrave.show_grave_info trigger

##>> View next and view previous
scoreboard objectives add hygrave.show_grave_info.view_next trigger
scoreboard objectives add hygrave.show_grave_info.view_previous trigger

##> Remotely loot graves
scoreboard objectives add hygrave.remote_loot_grave trigger

##> Info and Help
scoreboard objectives add hygrave.info trigger
scoreboard objectives add hygrave.help trigger

## Alpha version
scoreboard players set (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version 1

## Handle upgrades and downgrades
execute if score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if data storage hygrave:common data.schema_version_1 unless data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 1, patch: 0} run return run function hygrave:internal/versioning/unsupported_version_change_to_alpha

execute if data storage hygrave:common data.latest_schema_version unless data storage hygrave:common data{latest_schema_version:1} run return run function hygrave:internal/versioning/unsupported_unknown_version_change

execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 0, minor: 5, patch: 0} run return run function hygrave:internal/versioning/upgrade/from_0_5_0

execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=major,schema_version=1) hygrave.data_version matches 3.. run return run function hygrave:internal/versioning/unsupported_downgrade
execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=minor,schema_version=1) hygrave.data_version matches 1.. run return run function hygrave:internal/versioning/unsupported_downgrade
execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=patch,schema_version=1) hygrave.data_version matches 1.. run return run function hygrave:internal/versioning/downgrade

execute unless score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 if score (namespace=hygrave,type=major,schema_version=1) hygrave.data_version matches ..1 run return run function hygrave:internal/versioning/unsupported_upgrade

## Data version
function hygrave:internal/misc/store_data_version

## Check if command '/time query day(time)' works or not
execute store success score .time_query_works hygrave.temp_var run function hygrave:internal/misc/query_time
execute unless score .time_query_works hygrave.temp_var matches 1.. run tellraw @a "\n§cCommands '/time query day' and '/time query daytime' failed.\nIf you are receiving this message, PLEASE REPORT IT AS SOON AS POSSIBLE.\nDON'T BE LAZY AND DON't GIVE EXCUSES. JUST REPORT IT.\n\nYou can report it by emailing me at 'contactsul4ur@gmail.com'.\n\nYou may start using HyperGrave. Just know that it might run into some issues. They are expected to be minor issues."\

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t