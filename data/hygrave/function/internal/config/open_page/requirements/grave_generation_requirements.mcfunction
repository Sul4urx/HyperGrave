#@> Executed from:
#@>   function hygrave:internal/config/open_page/requirements

##
tellraw @s ""

## Category: Grave Generation Requirements
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_generation_requirements",\
    "fallback": "Requirements §7/ §r§lGenerating Graves"\
  }\
]

##> With Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.with_item",\
    "fallback": "  With Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.with_item",\
        "fallback": "Grave generation requirements if the player's inventory is not empty\n\nThe requirements here will only be applied if the player has at least one item in their inventory."\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.with_item.items.ids",\
    "fallback": "    Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.with_item.items.ids",\
        "fallback": "A list of IDs of items. The player must have at least one of these items in their inventory in order to generate a grave.\n\n§bℹ To find the ID of an item, look for something like §3minecraft:diamond§b in the tooltip of the item. If you can't find it, press F3 + H and try again.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.requirements.grave_generation_requirements.with_item.item_ids",\
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
            "translate": "hygrave.config_change_description.grave_generation_requirements.with_item.items.ids.add",\
            "fallback": "Click to add an item ID to the list.\n\n§bℹ Replace §6?§b with the ID of the item you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_generation_requirements/with_item/item_ids/add_item {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_generation_requirements.with_item.items.ids.remove",\
            "fallback": "Click to remove an item from the list.\n\n§bℹ Replace §6?§b with the index of the item you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:diamond', 'minecraft:amethyst', 'minecraft:copper_ingot']§b):\n  §61 §7→ §fRemoves the §61§fst item from the list, which is 'minecraft:diamond'.\n  §62 §7→ §fRemoves the §62§fnd item from the list, which is 'minecraft:amethyst'.\n  §63 §7→ §fRemoves the §63§frd item from the list, which is 'minecraft:copper_ingot'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_generation_requirements/with_item/item_ids/remove_item_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.grave_generation_requirements.with_item.items.ids.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6item§7', '§6item§7', '§6item§7', §8...§7] §3(§6item§3 is the ID of the item).§r\n\n§bExample: §3['minecraft:diamond', 'minecraft:wooden_sword', 'minecraft:copper_ingot'] §7→ §bThe player must have at least either a diamond, a wooden sword or a copper ingot in order to generate a grave.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/requirements/grave_generation_requirements/with_item/item_ids/change_list {value:['item', 'item', ...]}"\
        }\
      }\
    ]\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.with_item.xp",\
    "fallback": "    XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.with_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_generation_requirements.with_item.xp.levels",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_generation_requirements.with_item.xp",\
        "fallback": "Click to change the config."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_generation_requirements/with_item/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.with_item.gamemodes",\
    "fallback": "    Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.with_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can generate a grave with items (if other requirements are also met).\n§c⬛ §7→§r Players in that game mode cannot generate a grave with items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
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
            "nbt": "configs.text.requirements.grave_generation_requirements.with_item.gamemodes.survival",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.with_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/with_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_generation_requirements.with_item.gamemodes.adventure",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.with_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/with_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_generation_requirements.with_item.gamemodes.creative",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.with_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/with_item/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
  }\
]

##> Without Item
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.no_item",\
    "fallback": "  Without Item: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.no_item",\
        "fallback": "Grave generation requirements if the player's inventory is empty.\n\nThe requirements here will only be applied if the player has no items in their inventory."\
      }\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.no_item.xp",\
    "fallback": "    XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.no_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.requirements.grave_generation_requirements.no_item.xp.levels",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.grave_generation_requirements.no_item.xp",\
        "fallback": "Click to change the config."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/requirements/grave_generation_requirements/no_item/xp {value: ?}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_requirements.no_item.gamemodes",\
    "fallback": "    Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_requirements.no_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Players in that game mode can generate a grave without having any items (if other requirements are also met).\n§c⬛ §7→§r Players in that game mode cannot generate a grave without items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
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
            "nbt": "configs.text.requirements.grave_generation_requirements.no_item.gamemodes.survival",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.no_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/no_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_generation_requirements.no_item.gamemodes.adventure",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.no_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/no_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.requirements.grave_generation_requirements.no_item.gamemodes.creative",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_generation_requirements.no_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/requirements/grave_generation_requirements/no_item/gamemodes {gamemode:'creative'}"\
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
          "command": "/function hygrave:internal/config/open_page/requirements/grave_generation_requirements"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""