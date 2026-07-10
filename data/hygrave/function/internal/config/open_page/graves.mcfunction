#@> Executed from:
#@>   function hygrave:internal/config/open_page/main

##
tellraw @s ""

## Category: Graves
tellraw @s {"translate": "hygrave.config_category.graves","fallback": "§lGraves"}

##> Drop Contents On Despawn
tellraw @s [\
  {\
    "translate": "hygrave.config.drop_grave_contents_on_despawn",\
    "fallback": "  Drop Contents On Despawn: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.drop_grave_contents_on_despawn",\
        "fallback": "Whether graves should drop their contents (i.e. items and XP) when they despawn.\n\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.drop_contents_on_despawn",\
        "storage": "hygrave:common",\
        "interpret": true \
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/toggle/graves/drop_contents_on_despawn"\
    }\
  }\
]

##> Grave Despawn Time
tellraw @s [\
  {\
    "translate": "hygrave.config.despawn_time.grave",\
    "fallback": "  Grave Despawn Time: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.despawn_time.grave",\
        "fallback": "The amount of time (in seconds) that it takes for a grave to despawn.\n\n§8Default: 5400"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.despawn_time",\
            "storage": "hygrave:common",\
            "interpret": true,\
            "color": "aqua",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.replace_value",\
            "fallback": "Click to change the config's value. \nReplace §o?§r with the value you want to change the config to."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/grave_despawn_time {value: ?}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.freeze_grave_despawn_time",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.freeze_grave_despawn_time",\
            "fallback": "Click to freeze/unfreeze the despawn time of graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/freeze_grave_despawn_time"\
        }\
      }\
    ]\
  }\
]

##> Grave Placement Restrictions
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_placement_restrictions",\
    "fallback": "  Grave Placement Restrictions: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_placement_restrictions",\
        "fallback": "The blocks that a grave cannot generate on or generate in.\n\n§bℹ This config might be a bit confusing. Remember that if a condition is set to false, that would mean that graves will not be restricted to generate in that condition, meaning graves can generate in that condition."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_placement_restrictions",\
        "fallback": "Click to open the \"§lGrave Placement Restrictions§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/graves/grave_placement_restrictions"\
    }\
  }\
]

##> Item Distribution
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution",\
    "fallback": "  Item Distribution: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.item_distribution",\
        "fallback": "The items to remove, keep or take."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.item_distribution",\
        "fallback": "Click to open the \"§lItem Distribution§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/graves/item_distribution"\
    }\
  }\
]

##> Show Grave Info
tellraw @s [\
  {\
    "translate": "hygrave.config.show_grave_info",\
    "fallback": "  Show Grave Info: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.show_grave_info",\
        "fallback": "The contents of a grave that should be shown when a player wants to view the information of a grave. By default, all players can see all information."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.show_grave_info",\
        "fallback": "Click to open the \"§lShow Grave Info§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/graves/show_grave_info"\
    }\
  }\
]

##> Slot Distribution
tellraw @s [\
  {\
    "translate": "hygrave.config.slot_distribution",\
    "fallback": "  Slot Distribution: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.slot_distribution",\
        "fallback": "The slots to remove, keep or take.\n\n§bℹ This config has a higher priority than the Graves / Item Distribution config."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.slot_distribution",\
        "fallback": "Click to open the \"§lSlot Distribution§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/graves/slot_distribution"\
    }\
  }\
]

##> Tell Grave Mini-Info
tellraw @s [\
  {\
    "translate": "hygrave.config.tell_grave_mini_info",\
    "fallback": "  Tell Grave Mini-Info: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.tell_grave_mini_info",\
        "fallback": "Whether the mini-info of graves should be shown to players when they die. It looks something like this:\n\n§c☠ Sul4ur §6#1001 §7| §6810§7, §665§7, §6-198 §7| §aThe Overworld\n\n§cN §7→ §r§fWill not be shown.\n§eO §7→§r Will only be shown to the owner.\n§aE §7→§r Will be shown to everyone.\n\n§bℹ It's highly recommended not to set this to N, since players must know the GID of their own graves.\n\n§bℹ Whether the location of the grave should be shown is determined by what is set in the Show Grave Info config. ALL and OWN options are not affective though.\n\n§8Default: O"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.tell_grave_mini_info",\
        "storage": "hygrave:common",\
        "interpret": true \
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/toggle/graves/tell_grave_mini_info"\
    }\
  }\
]

##> XP Distribution
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution",\
    "fallback": "  XP Distribution: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.xp_distribution",\
        "fallback": "The amount of XP to remove, keep or take."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.xp_distribution",\
        "fallback": "Click to open the \"§lXP Distribution§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/graves/xp_distribution"\
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
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_go_back_description.main",\
            "fallback": "Click to go back to the main page.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/main"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/graves"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""