#<< config/open_page/main

##
tellraw @s ""

## Category: Dropped Contents
tellraw @s {"translate": "sgrave2.config_category.dropped_contents","fallback": " §lDropped Contents:"}

##> Invulnerable Items
tellraw @s [\
  {\
    "translate": "sgrave2.config.invulnerable_items",\
    "fallback": "   Invulnerable Items: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.invulnerable_items",\
        "fallback": "Whether items dropped from graves should be invulnerable (except to despawning, void damage and /kill).\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.invulnerable_items",\
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
      "value": "/function sgrave2:internal/config/toggle/dropped_contents/invulnerable_items"\
    }\
  }\
]

##> Invulnerable XP
tellraw @s [\
  {\
    "translate": "sgrave2.config.invulnerable_xp",\
    "fallback": "   Invulnerable XP: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.invulnerable_xp",\
        "fallback": "Whether XP orbs dropped from graves should be invulnerable (except to despawning, void damage and /kill).\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.invulnerable_xp",\
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
      "value": "/function sgrave2:internal/config/toggle/dropped_contents/invulnerable_xp"\
    }\
  }\
]


##> No Gravity Items
tellraw @s [\
  {\
    "translate": "sgrave2.config.no_gravity_items",\
    "fallback": "   No Gravity Items: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.no_gravity_items",\
        "fallback": "Whether items dropped from graves should not be affected by gravity.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.no_gravity_items",\
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
      "value": "/function sgrave2:internal/config/toggle/dropped_contents/no_gravity_items"\
    }\
  }\
]

##> No Gravity XP
tellraw @s [\
  {\
    "translate": "sgrave2.config.no_gravity_xp",\
    "fallback": "   No Gravity XP: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.no_gravity_xp",\
        "fallback": "Whether XP orbs dropped from graves should not be affected by gravity.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.no_gravity_xp",\
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
      "value": "/function sgrave2:internal/config/toggle/dropped_contents/no_gravity_xp"\
    }\
  }\
]

##> Item Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.item",\
    "fallback": "   Item Despawn Time: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.despawn_time.item",\
        "fallback": "The amount of time (in seconds) that it takes for items dropped from graves to despawn.\n§8Default: 2700"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.item.despawn_time",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §o?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/dropped_contents/item_despawn_time {value: ?}"\ 
    }\
  }\
]

##> XP Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.xp",\
    "fallback": "   XP Despawn Time: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.despawn_time.xp",\
        "fallback": "The amount of time (in seconds) that it takes for XP orbs dropped from graves to despawn.\n§8Default: 1200"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.dropped_contents.xp.despawn_time",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §o?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/dropped_contents/xp_despawn_time {value: ?}"\ 
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
          "value": "/function sgrave2:internal/config/open_page/dropped_contents"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""