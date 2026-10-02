## Don't allow grave locator in both hands
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] if items entity @s weapon.offhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run return run function hygrave:internal/item/grave_locator/warn {text: {\
  "translate": "hygrave.locate.two_hands_not_allowed",\
  "fallback": "§cYou shouldn't have a grave locator in both of your hands."\
}}

## Don't allow grave locator in neither hands
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] unless items entity @s weapon.offhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run return run function hygrave:internal/item/grave_locator/warn {text: {\
  "translate": "hygrave.locate.not_holding_locator",\
  "fallback": "§cYou are not holding a grave locator."\
}}

## If no graves have been generated yet
execute unless data storage hygrave:common graves[0] run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}}

## If grave doesn't exist
$execute unless data storage hygrave:common graves[{data:{gid:$(gid)}}] run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": ["§c$(gid)"]\
}}

## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
$function hygrave:internal/database/graves/lookup {gid: $(gid)}

## Store PID and status
execute store result score .grave_locator.grave.owner.pid hygrave.temp_var run data get storage hygrave:common graves[-1].data.owner.pid
execute store result score .grave_locator.grave.is_destroyed hygrave.temp_var run data get storage hygrave:common graves[-1].data.status.destroyed

## Check if player can locate grave
$execute if score .grave_locator.grave.is_destroyed hygrave.temp_var matches 0 if score .grave_locator.grave.owner.pid hygrave.temp_var = @s hygrave.pid unless score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 1 run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.not_allowed.ao",\
  "fallback": "§cYou are not allowed to locate grave #%s§c.",\
  "with": ["§c$(gid)"]\
}}
$execute unless score .grave_locator.grave.is_destroyed hygrave.temp_var matches 0 if score .grave_locator.grave.owner.pid hygrave.temp_var = @s hygrave.pid unless score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 1 run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.not_allowed.bo",\
  "fallback": "§cYou are not allowed to locate grave #%s§c.",\
  "with": ["§c$(gid)"]\
}}
$execute if score .grave_locator.grave.is_destroyed hygrave.temp_var matches 0 unless score .grave_locator.grave.owner.pid hygrave.temp_var = @s hygrave.pid unless score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 1 run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.not_allowed.an",\
  "fallback": "§cYou are not allowed to locate grave #%s§c.",\
  "with": ["§c$(gid)"]\
}}
$execute unless score .grave_locator.grave.is_destroyed hygrave.temp_var matches 0 unless score .grave_locator.grave.owner.pid hygrave.temp_var = @s hygrave.pid unless score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 1 run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.not_allowed.bn",\
  "fallback": "§cYou are not allowed to locate grave #%s§c.",\
  "with": ["§c$(gid)"]\
}}

## If nothing went wrong
$execute if items entity @s weapon.mainhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run function hygrave:internal/item/grave_locator/relocate/from_macro/mainhand {gid: $(gid)}
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run function hygrave:internal/item/grave_locator/relocate/from_macro/offhand {gid: $(gid)}

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1