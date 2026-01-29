# This data pack is made by Sul4ur

# #<<< <type> <path> -- executed from <type> hygrave:<path>
# #<< <path> -- executed from function hygrave:internal/<path>
# #<! <path> -- executed from function hygrave:run/<path>

# Executed when the world is loaded

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

## Handle upgrades and downgrades
execute if data storage hygrave:common data.latest_schema_version unless data storage hygrave:common data{latest_schema_version:1} run return run function hygrave:internal/versioning/unsupported_downgrade_unknown_version

execute if score (namespace=hygrave,type=major,schema_version=1) hygrave.data_version matches 1.. run return run function hygrave:internal/versioning/unsupported_downgrade
execute if score (namespace=hygrave,type=minor,schema_version=1) hygrave.data_version matches 6.. run return run function hygrave:internal/versioning/unsupported_downgrade

## Store Data version
##> It stores the version of HyperGrave
##> Used for upgrading and downgrading HyperGrave
scoreboard players set (namespace=hygrave,type=major,schema_version=1) hygrave.data_version 0
scoreboard players set (namespace=hygrave,type=minor,schema_version=1) hygrave.data_version 5
scoreboard players set (namespace=hygrave,type=patch,schema_version=1) hygrave.data_version 0

data modify storage hygrave:common data.latest_schema_version set value 1
data modify storage hygrave:common data.schema_version_1.hygrave.data_version set value {\
    version: {\
        major: 0,\
        minor: 5,\
        patch: 0,\
        form: {\
            array: [0, 5, 0],\
            string: "0.5.0",\
            single_int: 1_0000_0005_0000L \
        }\
    }\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t