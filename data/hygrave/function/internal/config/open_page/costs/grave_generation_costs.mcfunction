#<< config/open_page/costs

# Grave Generation Costs

##
tellraw @s ""

## Category: Grave Generation Costs
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_generation_costs",\
    "fallback": " Costs §7/ §r§lGrave Generation Costs"\
  }\
]

##> With Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.with_item",\
    "fallback": "   With Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.with_item",\
        "fallback": "The costs of generating a grave for players who have items"\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.with_item.items",\
    "fallback": "      Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.with_item.items",\
        "fallback": "A list of item predicates\nThe player must have an item that passes at least one of these predicates in their inventory to generate a grave.\n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n\n§a{value:[{}]}§7 → §fNo item predicates\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in HyperGrave's github page.\n\n§8Default: []"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_generation_costs.with_item.items",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.costs.grave_generation_costs.with_item.items",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_generation_costs/with_item/items/change_list {value:[{…}]}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.with_item.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.with_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.costs.grave_generation_costs.with_item.xp.levels",\
        "storage": "hygrave:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_generation_costs.with_item.xp",\
        "fallback": "Click to change the config."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_generation_costs/with_item/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.with_item.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.with_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can generate a grave with items. Other costs will still apply.\n§c⬛ §7→§r Players in that game mode cannot generate a grave with items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.with_item.gamemodes.survival",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.with_item.gamemodes.adventure",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.with_item.gamemodes.creative",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
  }\
]

##> Without Item
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.no_item",\
    "fallback": "   Without Item: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.no_item",\
        "fallback": "The costs of generating a grave for players who don't have an item in their inventory."\
      }\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.no_item.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.no_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.costs.grave_generation_costs.no_item.xp.levels",\
        "storage": "hygrave:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_generation_costs.no_item.xp",\
        "fallback": "Click to change the config."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_generation_costs/no_item/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs.no_item.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs.no_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can generate a grave without having any items. Other costs will still apply.\n§c⬛ §7→§r Players in that game mode cannot generate a grave without items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.no_item.gamemodes.survival",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.no_item.gamemodes.adventure",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_generation_costs.no_item.gamemodes.creative",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
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
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_go_back_description.costs",\
            "fallback": "Click to go back to page 'Costs'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/costs"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/costs/grave_generation_costs"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""