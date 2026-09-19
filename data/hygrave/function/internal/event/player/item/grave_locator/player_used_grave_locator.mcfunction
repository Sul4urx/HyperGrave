## Reset advancement
advancement revoke @s only hygrave:grave_locator/used

## Don't repeat
scoreboard players add @s hygrave.item.grave_locator.ticks_using_item 1
execute if score @s hygrave.item.grave_locator.ticks_using_item matches 2.. run return fail

## Manage use cooldown
execute if score @s hygrave.item.grave_locator.use_cooldown matches 1.. run return run function hygrave:internal/item/grave_locator/warn {text: {\
  "translate": "hygrave.grave_locator.use.still_in_cooldown",\
  "fallback": "§cYou must wait a few seconds before you can use the locator again."\
}}

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
  "translate": "hygrave.grave_locator.use.two_hands_not_allowed",\
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
  "translate": "hygrave.grave_locator.use.not_holding_locator",\
  "fallback": "§cYou're using a grave locator without holding one? How?? (Might be a bug though)"\
}}

## Show a convenient list allowing the player to quickly locate a grave
scoreboard players set @s hygrave.locate 1
scoreboard players set @s hygrave.item.grave_locator.use_cooldown 120