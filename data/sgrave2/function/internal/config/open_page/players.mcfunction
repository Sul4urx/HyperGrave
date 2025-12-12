#<< config/open_page/main

##
tellraw @s ""

## Category: Players
tellraw @s {"translate": "sgrave2.config_category.players","fallback": " §lPlayers:"}

##> Blacklist Items
tellraw @s [\
  {\
    "translate": "sgrave2.config.blacklist_items",\
    "fallback": "   Blacklist Items: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.blacklist_items",\
        "fallback": "A list of items which will not be collected by graves after the player dies.\n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: §6count§7, opertaion: '§6operation§7'}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6count§r: The minimum stack size of the item (minimum number of items in a stack) (e.g. 6)\n  §6operation§f: Can either be §akeep§f (Keep the item in player's inventory) or §adelete§f (Delete the item from player's inventory).\n\n§a{value:[{}]}§7 → §fNo item predicates\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in SGrave's github page.\n\n§8Default: [{predicates: {\"minecraft:enchantments\": [{levels: {enchantments: \"minecraft:vanishing_curse\"}}]}, operation: \"delete\"}]"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.blacklist_items",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.players.blacklist_items",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/players/blacklist_items/change_list {value:[{…}]}"\
    }\
  }\
]

##> Blacklist Slots
tellraw @s [\
  {\
    "translate": "sgrave2.config.blacklist_slots",\
    "fallback": "   Blacklist Slots: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.blacklist_slots",\
        "fallback": "If a player dies, items in these slots will not be collected and will instead remain in the player's inventory.\n\n§bℹ Format: §7[{slot: §6slot§7}, {slot: §6slot§7}, §8…§7]\n§6slot§f can be:\n§7- §ah1§7, §ah2§7, … , §ah9§7 → §fHotbar slots from left to right\n§7- §ait1§7, §ait2§7, … , §ait9§7 → §fInventory top row slots from left to right\n§7- §aim1§7, §aim2§7, … , §aim9§7 → §fInventory middle row slots from left to right\n§7- §aib1§7, §aib2§7, … , §aib9§7 → §fInventory bottom row slots from left to right\n§7- §aoffhand§7, §ahead§7, §achest§7, §alegs§7, §afeet§7 → §fOffhand and armor slots\n\n§7For example: {value:§a[{slot:h4},{slot:it5},{slot:'head'},{slot:offhand},{slot:\"ib9\"}]§7}\nTo clear the list, use {value:§a[]§7}.\n\n§8Default: []"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.blacklist_slots",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.players.blacklist_slots",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/players/blacklist_slots/change_list {value:[{slot:?},{slot:'?'},…]}"\
    }\
  }\
]

##> Tell Grave Mini-Info
tellraw @s [\
  {\
    "translate": "sgrave2.config.tell_grave_mini_info",\
    "fallback": "   Tell Grave Mini-Info: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.tell_grave_mini_info",\
        "fallback": "Whether the mini-info of graves should be shown to players when they die. It looks something like this:\n\n§c☠ Sul4ur §6#1001 §7| §6810§7, §665§7, §6-198 §7| §aThe Overworld\n\n§cN §7→ §r§fWill not be shown.\n§eO §7→§r Will only be shown to the owner.\n§aE §7→§r Will be shown to everyone.\n\n§bℹ It's highly recommended not to set this to N, since players must know the GID of their own graves.\n§bℹ Whether the location of the grave should be shown is determined by what is set in the Show Grave Info config. ALL and OWN options are not affective though.\n§8Default: O"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.tell_grave_mini_info",\
        "storage": "sgrave2:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function sgrave2:internal/config/toggle/graves/tell_grave_mini_info"\
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
            "translate": "sgrave2.config_go_back_description.main",\
            "fallback": "Click to go back to the main page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/main"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/players"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""
