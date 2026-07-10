#@> Executed from:
#@>   function hygrave:internal/config/open_page/requirements

##
tellraw @s ""

## Category: Grave Remote Looting Requirements
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_remote_looting_requirements",\
    "fallback": "Requirements §7/ §r§lRemotely Looting Graves"\
  }\
]

##> Owners
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.owners",\
    "fallback": "  Owners: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.owners",\
        "fallback": "Grave remote looting requirements if the player owns of the grave\n\nThe requirements here will only be applied if the player is the owner of the grave (i.e. is the player who generated this grave)."\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.owners.items.ids",\
    "fallback": "    Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.owners.items.ids",\
        "fallback": "A list of IDs of items. The player must have one of these items in their hand in order to remotely loot the grave.\n\n§bℹ To find the ID of an item, look for something like §3minecraft:diamond§b in the tooltip of the item. If you can't find it, press F3 + H and try again.\n\n§6ℹ Some amount of the item §nwill get removed§r§6 according to the sub-config Remove Count.§e For example if the value of this config is ['minecraft:diamond'] and Remove Count is set to 2 and the player has 64 diamonds, they will have 62 diamonds in their hand after remotely looting the grave.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.requirements.grave_remote_looting_requirements.owners.item_ids",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.owners.items.ids.add",\
            "fallback": "Click to add an item ID to the list.\n\n§bℹ Replace §6?§b with the ID of the item you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/owners/item_ids/add_item {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.owners.items.ids.remove",\
            "fallback": "Click to remove an item from the list.\n\n§bℹ Replace §6?§b with the index of the item you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:diamond', 'minecraft:amethyst', 'minecraft:copper_ingot']§b):\n  §61 §7→ §fRemoves the §61§fst item from the list, which is 'minecraft:diamond'.\n  §62 §7→ §fRemoves the §62§fnd item from the list, which is 'minecraft:amethyst'.\n  §63 §7→ §fRemoves the §63§frd item from the list, which is 'minecraft:copper_ingot'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/owners/item_ids/remove_item_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.owners.items.ids.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6item§7', '§6item§7', '§6item§7', §8...§7] §3(§6item§3 is the ID of the item).§r\n\n§bExample: §3['minecraft:diamond', 'minecraft:wooden_sword', 'minecraft:copper_ingot'] §7→ §bThe player must have either a diamond, a wooden sword or a copper ingot in their hand in order to remotely loot the grave.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/owners/item_ids/change_list {value:['item', 'item', ...]}"\
        }\
      }\
    ]\
  }\
]

##>>> Remove count
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.owners.item_remove_count",\
    "fallback": "      Remove Count: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.owners.item_remove_count",\
        "fallback": "The amount to remove from the item in the player's hand if the player had the item nessecary to remotely loot the grave.\n\n§bℹ The player must also have at least this amount of the item in their hand to remotely loot the grave.\n\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_remote_looting_requirements.owners.item_remove_count",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_remote_looting_requirements.owners.item_remove_count",\
        "fallback": "Click to change the config. Replace §6?§r with the remove count."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/owners/item_ids/change_remove_count {value: ?}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.owners.xp",\
    "fallback": "    XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.owners.xp",\
        "fallback": "The amount of XP levels required to remotely loot the grave\n\n§6ℹ The XP §nwill be consumed§r§6."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_remote_looting_requirements.owners.xp.levels",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_remote_looting_requirements.owners.xp",\
        "fallback": "Click to change the config.\n\n§7ℹ Format: {value:§olevels§r§7}\n\nFor example: {value: 6}."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/owners/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.owners.gamemodes",\
    "fallback": "    Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.owners.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can remotely loot the grave (if other requirements are also met).\n§c⬛ §7→§r Players in that game mode cannot remotely loot the grave.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables looting the grave for owners of the grave.\n\n§8Default: §aS§8, §aA§8, §aC"\
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
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.owners.gamemodes.survival",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.owners.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/owners/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.owners.gamemodes.adventure",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.owners.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/owners/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.owners.gamemodes.creative",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.owners.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/owners/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
  }\
]

##> Non-Owners
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.non_owners",\
    "fallback": "  Non-Owners: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.non_owners",\
        "fallback": "Grave remote looting requirements if the player doesn't own the grave\n\nThe requirements here will only be applied if the player is not the owner of the grave (i.e. did not generate this grave)."\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.non_owners.items.ids",\
    "fallback": "    Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.non_owners.items.ids",\
        "fallback": "A list of IDs of items. The player must have one of these items in their hand in order to remotely loot the grave.\n\n§bℹ To find the ID of an item, look for something like §3minecraft:diamond§b in the tooltip of the item. If you can't find it, press F3 + H and try again.\n\n§6ℹ Some amount of the item §nwill get removed§r§6 according to the sub-config Remove Count.§e For example if the value of this config is ['minecraft:diamond'] and Remove Count is set to 2 and the player has 64 diamonds, they will have 62 diamonds in their hand after remotely looting the grave.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.requirements.grave_remote_looting_requirements.non_owners.item_ids",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.non_owners.items.ids.add",\
            "fallback": "Click to add an item ID to the list.\n\n§bℹ Replace §6?§b with the ID of the item you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/item_ids/add_item {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.non_owners.items.ids.remove",\
            "fallback": "Click to remove an item from the list.\n\n§bℹ Replace §6?§b with the index of the item you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:diamond', 'minecraft:amethyst', 'minecraft:copper_ingot']§b):\n  §61 §7→ §fRemoves the §61§fst item from the list, which is 'minecraft:diamond'.\n  §62 §7→ §fRemoves the §62§fnd item from the list, which is 'minecraft:amethyst'.\n  §63 §7→ §fRemoves the §63§frd item from the list, which is 'minecraft:copper_ingot'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/item_ids/remove_item_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_remote_looting_requirements.non_owners.items.ids.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6item§7', '§6item§7', '§6item§7', §8...§7] §3(§6item§3 is the ID of the item).§r\n\n§bExample: §3['minecraft:diamond', 'minecraft:wooden_sword', 'minecraft:copper_ingot'] §7→ §bThe player must have either a diamond, a wooden sword or a copper ingot in their hand in order to remotely loot the grave.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/item_ids/change_list {value:['item', 'item', ...]}"\
        }\
      }\
    ]\
  }\
]

##>>> Remove count
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.non_owners.item_remove_count",\
    "fallback": "      Remove Count: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.non_owners.item_remove_count",\
        "fallback": "The amount to remove from the item in the player's hand if the player had the item nessecary to remotely loot the grave.\n\n§bℹ The player must also have at least this amount of the item in their hand to remotely loot the grave.\n\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_remote_looting_requirements.non_owners.item_remove_count",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_remote_looting_requirements.non_owners.item_remove_count",\
        "fallback": "Click to change the config. Replace §6?§r with the remove count."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/item_ids/change_remove_count {value: ?}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.non_owners.xp",\
    "fallback": "    XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.non_owners.xp",\
        "fallback": "The amount of XP levels required to remotely loot the grave\n\n§6ℹ The XP §nwill be consumed§r§6."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_remote_looting_requirements.non_owners.xp.levels",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_remote_looting_requirements.non_owners.xp",\
        "fallback": "Click to change the config.\n\n§7ℹ Format: {value:§olevels§r§7}\n\nFor example: {value:6}."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_remote_looting_requirements/non_owners/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_requirements.non_owners.gamemodes",\
    "fallback": "    Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_requirements.non_owners.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can remotely loot the grave (if other requirements are also met).\n§c⬛ §7→§r Players in that game mode cannot remotely loot the grave.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables looting the grave for non-owners of the grave.\n\n§8Default: §aS§8, §aA§8, §aC"\
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
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.non_owners.gamemodes.survival",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.non_owners.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/non_owners/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.non_owners.gamemodes.adventure",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.non_owners.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/non_owners/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_remote_looting_requirements.non_owners.gamemodes.creative",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_remote_looting_requirements.non_owners.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_remote_looting_requirements/non_owners/gamemodes {gamemode:'creative'}"\
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
            "translate": "hygrave.config_go_back_description.requirements",\
            "fallback": "Click to go back to page 'Requirements'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/requirements"\
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
          "command": "/function hygrave:internal/config/open_page/requirements/grave_remote_looting_requirements"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""