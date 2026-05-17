#@> Executed from:
#@>   function hygrave:internal/load
#@>   function hygrave:internal/versioning/upgrade/*
#@>   function hygrave:internal/versioning/downgrade

## Store Data version
##> It stores the version of HyperGrave
##> Used for upgrading and downgrading HyperGrave
scoreboard players set (namespace=hygrave,type=major,schema_version=1) hygrave.data_version 2
scoreboard players set (namespace=hygrave,type=minor,schema_version=1) hygrave.data_version 1
scoreboard players set (namespace=hygrave,type=patch,schema_version=1) hygrave.data_version 0

data modify storage hygrave:common data.latest_schema_version set value 1
data modify storage hygrave:common data.schema_version_1.hygrave.data_version set value {\
    version: {\
        major: 2,\
        minor: 1,\
        patch: 0,\
        prerelease: { \
            alpha: true \
        }, \
        form: {\
            array: [2, 1, 0],\
            string: "2.1.0-alpha",\
            single_int: 1_0002_0001_0000L \
        }\
    }\
}