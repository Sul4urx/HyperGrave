#<< config/open_page/graves

# Item Distribution

## Insert a newline before the menu
tellraw @s ""

## Category: Item Distribution
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.item_distribution.",\
    "fallback": " Graves §7/ §r§lItem Distribution:"\
  }\
]

## Grave Generation Fail
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_fail",\
    "fallback": "   Grave Generation Fail: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config.item_distribution.grave_generation_fail",\
        "fallback": "The item distribution if the player failed to generate a grave (i.e. didn't have nessecary requirements to generate a grave). \n\n§bℹ Items that don't match any of the item predicates in the fields below will be kept in the player's inventory instead."\
      }\
    }\
  }\
]

##> Operation
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_fail.operation",\
    "fallback": "     Operation: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config.item_distribution.grave_generation_fail.operation",\
        "fallback": "§cRemove §7→§r If a player fails to generate a grave, all of their items will be removed.\n§aKeep §7→§r If a player fails to generate a grave, all of their items will be kept inside their inventory.\n§8Default: Keep"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.item_distribution.grave_generation_fail.operation",\
        "storage": "hygrave:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/item_distribution/grave_generation_fail/operation"\
    }\
  }\
]

## Grave Generation Success
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success",\
    "fallback": "   Grave Generation Success ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success",\
        "fallback": "The item distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave).\n\n§bℹ Items that don't match any of the item predicates in the fields below will be taken by the grave instead.\n\n§bℹ Grave generation costs are applied as if items have already been distributed using this field. For example if a diamond is required to generate a grave and the item distribution config removes all diamonds on grave generation success, the grave will not generate and the field Grave Generation Fail would be used instead. This can be a bit confusing, but it could be important."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.remove",\
    "fallback": "     Remove: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success.remove",\
        "fallback": "A list of item predicates. Items that match at least one of these predicates will fully get removed. \n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n\n§a{value:[{count:-1}]}§7 → §fImpossible item predicate (Does not remove any items)\n§a{value:[{}]}§7 → §fNo item predicates (Removes all items)\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in HyperGrave's github page.\n\n§8Default: [{predicates: {\"minecraft:enchantments\": [{levels:{enchantments: \"minecraft:vanishing_curse\"}}]}}]"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.item_distribution",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.remove",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/change_list {value:[{…}]}"\
    }\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.keep",\
    "fallback": "     Keep: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success.keep",\
        "fallback": "A list of item predicates. Items that match at least one of these predicates will be kept inside the player's inventory. \n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n\n§a{value:[{count:-1}]}§7 → §fImpossible item predicate (Does not keep any items)\n§a{value:[{}]}§7 → §fNo item predicates (Keeps all items)\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in HyperGrave's github page.\n\n§8Default: [{count:-1}]"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.item_distribution",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.keep",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/change_list {value:[{…}]}"\
    }\
  }\
]

##
tellraw @s ""

## Config page menu
tellraw @s [\
  {\
    "translate": "§7[%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§c< Back ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'.",\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/open_page/graves"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/open_page/graves/item_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""