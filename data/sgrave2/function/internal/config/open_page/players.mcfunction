#<< config/open_page/main

##
tellraw @s ""

## Category: Players
tellraw @s {"translate": "sgrave2.config_category.players","fallback": " §lPlayers:"}

##> Tell Grave Mini-Info
tellraw @s [\
  {\
    "translate": "sgrave2.config.tell_grave_mini_info",\
    "fallback": "   Tell Grave Mini-Info: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
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
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/toggle/graves/tell_grave_mini_info"\
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
            "translate": "sgrave2.config_go_back_description.main",\
            "fallback": "Click to go back to the main page.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/main"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/players"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""
