#@> Executed from:
#@>   function hygrave:internal/config/open_page/general

$data modify storage hygrave:common temp.config.value set value $(value)

execute if data storage hygrave:common temp.config{value: 24} as @s[type=minecraft:player] at @s run playsound minecraft:ambient.cave ui @s ~ ~ ~ 1 2 1
execute if data storage hygrave:common temp.config{value: 24} run title @s actionbar {"translate": "hygrave.config.general.warn_visit","fallback": "§6Don't say I didn't warn you!"}
execute if data storage hygrave:common temp.config{value: 24} run return run function hygrave:internal/config/open_page/general/secret

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "hygrave:common",\
    path: "temp.config.value"\
  },\
  range: {\
    min: 0,\
    max: 16\
  }\
} run return run title @s actionbar {\
  "translate": "hygrave.change_config_message.mod_compatibility_mode.item_collection_distance.fail",\
  "fallback": "§cThe value must be an integer between 0 and 16 (inclusive)."\
}

## If success, change value
execute store result score (general/mod_compatibility_mode/item_collection_distance) hygrave.config run data get storage hygrave:common temp.config.value

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/general