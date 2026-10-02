#@> Executed from:
#@>   function hygrave:internal/item/grave_locator/tick/hand

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run function hygrave:internal/item/grave_locator/break/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run function hygrave:internal/item/grave_locator/break/offhand