execute if data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 0, minor: 5, patch: 0} run return run function hygrave:internal/versioning/upgrade/from_0_5_0
execute if data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 0, patch: 0} run return run function hygrave:internal/versioning/upgrade/from_2_0_0
execute if data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 1, patch: 0} run return run function hygrave:internal/versioning/upgrade/from_2_1_0
execute if data storage hygrave:common data.schema_version_1.hygrave.data_version.version{major: 2, minor: 1, patch: 1} run return run function hygrave:internal/versioning/upgrade/from_2_1_1

function hygrave:internal/versioning/unsupported/upgrade_not_supported
