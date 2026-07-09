#@> Executed from:
#@>   function hygrave:internal/config/open_page/graves

## Insert a newline before the menu
tellraw @s ""

## Category: XP Distribution
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.xp_distribution.",\
    "fallback": " Graves §7/ §r§lXP Distribution"\
  },\
  {\
    "text": " §bℹ",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_category_description.xp_distribution",\
        "fallback": "Each operation (remove, keep, take) is applied on a portion of player's XP. Each operation has something called weight, which determines this portion.\n\nOperations with a higher weight are applied on a higher portion of the player's XP.\n\nThe formula for the portion is:\n§6(Operation's weight) / (Total weight of all operations)"\
      }\
    }\
  }\
]

## Grave Generation Fail
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_fail",\
    "fallback": "   Grave Generation Fail: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_fail",\
        "fallback": "The XP distribution if the player failed to generate a grave (i.e. didn't have nessecary requirements to generate a grave)."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_fail.remove",\
    "fallback": "     Remove: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_fail.remove",\
        "fallback": "The weight of the 'remove' operation, which fully removes the player's XP.\n\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.remove",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/xp_distribution/grave_generation_fail/remove {value: ?}"\
    }\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_fail.keep",\
    "fallback": "     Keep: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.xp_distribution.grave_generation_fail.keep",\
        "fallback": "The weight of the 'keep' operation, which keeps the XP in the player's inventory.\n\n§8Default: 2"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.keep",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/xp_distribution/grave_generation_fail/keep {value: ?}"\
    }\
  }\
]

##> Total
tellraw @s [\
  {\
    "translate": "hygrave.config_info.xp_distribution.grave_generation_fail.total",\
    "fallback": "     §eTotal: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_info_description.xp_distribution.grave_generation_fail.total",\
        "fallback": "The total weight of all operations.\n\n§bℹ The total weight must not become 0. If it does, all operations' weights will eventually reset."\
      }\
    }\
  },\
  {\
    "translate": "%s",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.total",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_info_number_description",\
        "fallback": "This isn't a config you can change, this is just an info."\
      }\
    }\
  }\
]

## Grave Generation Success
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_success",\
    "fallback": "   Grave Generation Success ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_success",\
        "fallback": "The XP distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave)."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_success.remove",\
    "fallback": "     Remove: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_success.remove",\
        "fallback": "The weight of the 'remove' operation, which fully removes the player's XP.\n\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.remove",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/xp_distribution/grave_generation_success/remove {value: ?}"\
    }\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_success.keep",\
    "fallback": "     Keep: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_success.keep",\
        "fallback": "The weight of the 'keep' operation, which keeps the XP in the player's inventory.\n\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.keep",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/xp_distribution/grave_generation_success/keep {value: ?}"\
    }\
  }\
]

##> Take
tellraw @s [\
  {\
    "translate": "hygrave.config.xp_distribution.grave_generation_success.take",\
    "fallback": "     Take: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.xp_distribution.grave_generation_success.take",\
        "fallback": "The weight of the 'take' operation, which gives the XP to the grave.\n\n§8Default: 11"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.take",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/xp_distribution/grave_generation_success/take {value: ?}"\
    }\
  }\
]

##> Total
tellraw @s [\
  {\
    "translate": "hygrave.config_info.xp_distribution.grave_generation_success.total",\
    "fallback": "     §eTotal: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_info_description.xp_distribution.grave_generation_success.total",\
        "fallback": "The total weight of all operations.\n\n§bℹ The total weight must not become 0. If it does, all operations' weights will eventually reset."\
      }\
    }\
  },\
  {\
    "translate": "%s",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.total",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_info_number_description",\
        "fallback": "This isn't a config you can change, this is just an info."\
      }\
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
            "translate": "hygrave.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/graves"\
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
          "command": "/function hygrave:internal/config/open_page/graves/xp_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""