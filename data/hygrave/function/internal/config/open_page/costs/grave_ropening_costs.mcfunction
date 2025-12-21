#<< config/open_page/costs

# Grave Remote Opening Costs

##
tellraw @s ""

## Category: Grave Remote Opening Costs
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_ropening_costs",\
    "fallback": " Costs §7/ §r§lGrave Remote Opening Costs"\
  }\
]

##> Owners
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.owners",\
    "fallback": "   Owners: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.owners",\
        "fallback": "The costs of remotely looting a grave for the owner of the grave"\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.owners.items",\
    "fallback": "      Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.owners.items",\
        "fallback": "A list of item predicates\nThe player must have an item that passes at least one of these predicates in their mainhand to remotely loot the grave.\n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}, remove: §6remove§7}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n  §6remove§r: The amount to remove from the item's stack size\n\n§a{value:[{}]}§7 → §fNo item predicates\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in HyperGrave's github page.\n\n§8Default: []"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_ropening_costs.owners.items",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.costs.grave_ropening_costs.owners.items",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_ropening_costs/owners/items/change_list {value:[{…}]}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.owners.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.owners.xp",\
        "fallback": "The amount of XP levels required to remotely loot the grave\n§6ℹ The XP §nwill be consumed§r§6."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.costs.grave_ropening_costs.owners.xp.levels",\
        "storage": "hygrave:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_ropening_costs.owners.xp",\
        "fallback": "Click to change the config.\n§7ℹ Format: {value:§olevels§r§7}\nFor example: {value: 6}."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_ropening_costs/owners/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.owners.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.owners.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can remotely loot the grave. Other costs will still apply.\n§c⬛ §7→§r Players in that game mode cannot remotely loot the grave.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables looting the grave for owners of the grave.\n\n§8Default: §aS§8, §aA§8, §aC"\
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
            "nbt": "configs.text.costs.grave_ropening_costs.owners.gamemodes.survival",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.owners.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/owners/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_ropening_costs.owners.gamemodes.adventure",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.owners.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/owners/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_ropening_costs.owners.gamemodes.creative",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.owners.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/owners/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
  }\
]

##> Non-Owners
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.non_owners",\
    "fallback": "   Non-Owners: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.non_owners",\
        "fallback": "The costs of remotely looting a grave for players who are §nnot§r the owner of the grave"\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.non_owners.items",\
    "fallback": "      Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.non_owners.items",\
        "fallback": "A list of item predicates\nThe player must have an item that passes at least one of these predicates in their mainhand to remotely loot the grave.\n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}, remove: §6remove§7}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n  §6remove§r: The amount to remove from the item's stack size\n\n§a{value:[{}]}§7 → §fNo item predicates\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in HyperGrave's github page.\n\n§8Default: []"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_ropening_costs.non_owners.items",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.costs.grave_ropening_costs.non_owners.items",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_ropening_costs/non_owners/items/change_list {value:[{…}]}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.non_owners.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.non_owners.xp",\
        "fallback": "The amount of XP levels required to remotely loot the grave\n§6ℹ The XP §nwill be consumed§r§6."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.costs.grave_ropening_costs.non_owners.xp.levels",\
        "storage": "hygrave:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_ropening_costs.non_owners.xp",\
        "fallback": "Click to change the config.\n§7ℹ Format: {value:§olevels§r§7}\nFor example: {value:6}."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/costs/grave_ropening_costs/non_owners/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs.non_owners.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs.non_owners.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can remotely loot the grave. Other costs will still apply.\n§c⬛ §7→§r Players in that game mode cannot remotely loot the grave.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables looting the grave for non-owners of the grave.\n\n§8Default: §aS§8, §aA§8, §aC"\
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
            "nbt": "configs.text.costs.grave_ropening_costs.non_owners.gamemodes.survival",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.non_owners.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/non_owners/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_ropening_costs.non_owners.gamemodes.adventure",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.non_owners.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/non_owners/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.costs.grave_ropening_costs.non_owners.gamemodes.creative",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_ropening_costs.non_owners.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/costs/grave_ropening_costs/non_owners/gamemodes {gamemode:'creative'}"\
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
          "command": "/function hygrave:internal/config/open_page/costs/grave_ropening_costs"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""