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

execute unless data storage hygrave:common graves[0] run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}}
$execute unless data storage hygrave:common graves[{data:{gid:$(gid)}}] run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": ["§c$(gid)"]\
}}
$execute unless data storage hygrave:common graves[{data:{gid:$(gid),status:{destroyed:0b}}}] run return run function hygrave:internal/item/grave_locator/warn {text: {\
\
  "translate": "hygrave.locate.not_allowed",\
  "fallback": "§cYou are not allowed to locate grave #%s§c.",\
  "with": ["§c$(gid)"]\
}}


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
