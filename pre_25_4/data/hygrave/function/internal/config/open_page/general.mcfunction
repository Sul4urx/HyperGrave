#<< config/open_page/main

##
tellraw @s ""

## Category: Graves
tellraw @s {"translate": "hygrave.config_category.general","fallback": " §lGeneral:"}

##> Change Game Rules
tellraw @s [\
  {\
    "translate": "hygrave.config.change_gamerules",\
    "fallback": "   Change Game Rules: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.change_gamerules",\
        "fallback": "§a✔ §7→§r (Recommended) keepInventory and doImmediateRespawn game rules are autmatically set to true and false, respectively. keepInventory won't be affected if Mod Compatibility Mode is set to true.\n§c❌ §7→§r keepInventory and doImmediateRespawn game rules are not affected by HyperGrave.\n\n§bℹ HyperGrave won't work properly if at least one of the gamerules are not set to their approprtiate values.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.general.change_gamerules",\
        "storage": "hygrave:common" \
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
      "command": "/function hygrave:internal/config/toggle/general/change_gamerules"\
    }\
  }\
]

##> Mod Compatibility Mode
tellraw @s [\
  {\
    "translate": "hygrave.config.mod_compatibility_mode",\
    "fallback": "   §3Mod Compatibility Mode: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.mod_compatibility_mode",\
        "fallback": "§a✔ §7→§r keepInventory game rule is set to false (can be rechanged later) and Graves collect dropped items\n§c❌ §7→§r keepInventory is set to true (can't be rechanged if Change Game Rules config is set to true) and Graves take items from player's inventory.\n\n§bPros:\n§f  §7•§f Better compatibility (especially with mods that add custom slots)\n§cCons:\n  §7•§f Increased risk of item loss\n  §7•§f Most configs related to items or slots (e.g. Graves / Item Distribution) won't work. If you really want these configs to be usable, you should use mods that can do what these configs can.\n  §7•§f Items won't be put in appropriate slots and will instead be dropped.\n\n§3ℹ This is an experimental config!\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.general.mod_compatibility_mode",\
        "storage": "hygrave:common" \
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
      "command": "/function hygrave:internal/config/toggle/general/mod_compability_mode"\
    }\
  },\
]

##>> Item Collection Distance
tellraw @s [\
  {\
    "translate": "hygrave.config.mod_compatibility_mode.item_collection_distance",\
    "fallback": "     Item Collection Distance: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.mod_compatibility_mode.item_collection_distance",\
        "fallback": "The distance (in blocks) an item must be from the grave in order to be collected by the grave.\nThe bigger the value, the lower the risk of losing items, but the more likely to collect additional dropped items.\n§8Default: 4"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.general.'mod_compatibility_mode/item_collection_distance'",\
        "storage": "hygrave:common",\
        "color": "aqua"\
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
      "command": "/function hygrave:internal/config/change/general/mod_compatibility_mode/item_collection_distance {value: ?}"\
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
          "command": "/function hygrave:internal/config/open_page/general"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""