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

## If there are no active graves,
## Tell the player and return
execute unless data storage hygrave:common graves[] run return run title @s actionbar {\
  "translate": "hygrave.grave_locator.show_grave_list.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## If the admin disabled showing grave lists, tell the player and return
execute \
  if score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 0 \
  if score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 0 \
  if score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 0 \
  if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 0 \
run return run title @s actionbar {\
  "translate": "hygrave.grave_locator.grave_locator.grave_list_display.fail.not_allowed_to_use",\
  "fallback": "§cYou're not allowed to use grave locators."\
}

## Partition GIDs into 4 types: AO, BO, AN, BN
## And also store their text components
data modify storage hygrave:common temp.grave_locator.grave_list set value {ao: [], bo: [], an: [], bn: []}

scoreboard players operation .grave_locator.show_grave_list.gid hygrave.temp_var = (first_gid) hygrave.var
execute store result storage hygrave:common temp.mcargs.'item/grave_locator/show_grave_list/fill_list'.gid int 1 run scoreboard players get .grave_locator.show_grave_list.gid hygrave.temp_var

function hygrave:internal/item/grave_locator/show_grave_list/fill_list with storage hygrave:common temp.mcargs.'item/grave_locator/show_grave_list/fill_list'

execute \
  unless data storage hygrave:common temp.grave_locator.grave_list.ao[] \
  unless data storage hygrave:common temp.grave_locator.grave_list.bo[] \
  unless data storage hygrave:common temp.grave_locator.grave_list.an[] \
  unless data storage hygrave:common temp.grave_locator.grave_list.bn[] \
run return run tellraw @s {\
  "translate": "hygrave.grave_locator.grave_list_display.error.illegal_type_partition",\
  "fallback": "§cThere is at least one grave that isn't of type AO, BO, AN or BN. This is a bug, please report this."\
}

## Show
tellraw @s ""
tellraw @s {\
  "translate": "hygrave.grave_locator.grave_list_display.title",\
  "fallback": "§lLocate Grave:",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_locator.grave_list_display_description.title",\
      "fallback": "A list of all grave GIDs sorted by type and then GID. Click on any GID to locate the grave with that GID.\n\n§bℹ If a field has \"None\" in front of it, it means that the field has no graves (i.e. is empty), or the admin doesn't allow locating graves of that type.",\
    }\
  },\
}

##> AO
execute if score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 1 if data storage hygrave:common temp.grave_locator.grave_list.ao[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.ao","fallback": "  Your active graves:"}

execute if score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 1 unless data storage hygrave:common temp.grave_locator.grave_list.ao[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.ao.none","fallback": "  §7Your active graves: None"}

execute if score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 0 run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.ao.none","fallback": "  §7Your active graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_locator.grave_list.ao[]
execute if score (items/grave_locator/locatable_grave_types/ao) hygrave.config matches 1 if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/item/grave_locator/show_grave_list/show/loop {type: "ao"}

##> BO
execute if score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 1 if data storage hygrave:common temp.grave_locator.grave_list.bo[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bo","fallback": "  Your broken graves:"}

execute if score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 1 unless data storage hygrave:common temp.grave_locator.grave_list.bo[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bo.none","fallback": "  §7Your broken graves: None"}

execute if score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 0 run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bo.none","fallback": "  §7Your broken graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_locator.grave_list.bo[]
execute if score (items/grave_locator/locatable_grave_types/bo) hygrave.config matches 1 if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/item/grave_locator/show_grave_list/show/loop {type: "bo"}

##> AN
execute if score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 1 if data storage hygrave:common temp.grave_locator.grave_list.an[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.an","fallback": "  Others' active graves:"}

execute if score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 1 unless data storage hygrave:common temp.grave_locator.grave_list.an[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.an.none","fallback": "  §7Others' active graves: None"}

execute if score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 0 run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.an.none","fallback": "  §7Others' active graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_locator.grave_list.an[]
execute if score (items/grave_locator/locatable_grave_types/an) hygrave.config matches 1 if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/item/grave_locator/show_grave_list/show/loop {type: "an"}

##> BN
execute if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 1 if data storage hygrave:common temp.grave_locator.grave_list.bn[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bn","fallback": "  Others' broken graves:"}

execute if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 1 unless data storage hygrave:common temp.grave_locator.grave_list.bn[] run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bn.none","fallback": "  §7Others' broken graves: None"}

execute if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 0 run tellraw @s {"translate": "hygrave.grave_locator.grave_list_display.category.bn.none","fallback": "  §7Others' broken graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_locator.grave_list.bn[]
execute if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 1 if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/item/grave_locator/show_grave_list/show/loop {type: "bn"}

##>
tellraw @s ""

##> Menu
tellraw @s [\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "text": "§b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.grave_locator.grave_list_display.refresh.description",\
            "fallback": "Click to refresh this list."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/trigger hygrave.locate"\
        }\
      }\
    ]\
  }\
]

##>
tellraw @s ""