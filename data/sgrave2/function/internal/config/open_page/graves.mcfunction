#<< config/open_page/main

##
tellraw @s ""

## Category: Graves
tellraw @s {"translate": "sgrave2.config_category.graves","fallback": " §lGraves:"}

##> Glowing graves
tellraw @s [\
  {\
    "translate": "sgrave2.config.glowing_graves",\
    "fallback": "   Glowing Graves: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.glowing_graves",\
        "fallback": "Whether graves have a glow outline, as if they had the glowing status effect.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.glowing_graves",\
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
      "command": "/function sgrave2:internal/config/toggle/graves/glowing_graves"\
    }\
  }\
]

##> Grave Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.grave",\
    "fallback": "   Grave Despawn Time: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.despawn_time.grave",\
        "fallback": "The amount of time (in seconds) that it takes for a grave to despawn.\n§8Default: 5400"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.despawn_time",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §o?§r with the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/graves/grave_despawn_time {value: ?}"\
    }\
  }\
]

##> Grave Placement Restrictions
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions",\
    "fallback": "   Grave Placement Restrictions: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions",\
        "fallback": "The blocks that a grave cannot generate on or generate in.\n§bℹ This config might be a bit confusing. Remember that if a condition is set to false, that would mean that graves will not be restricted to generate in that condition, meaning graves can generate in that condition."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.grave_placement_restrictions",\
        "fallback": "Click to open the \"§lGrave Placement Restrictions§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/grave_placement_restrictions"\
    }\
  }\
]

##> ICD Properties
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd",\
    "fallback": "   ICD Properties: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd",\
        "fallback": "The properties of the ICD feature."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.icd",\
        "fallback": "Click to open the \"§lICD Properties§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/icd_properties"\
    }\
  }\
]

##> Item Distribution
tellraw @s [\
  {\
    "translate": "sgrave2.config.item_distribution",\
    "fallback": "   Item Distribution: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.item_distribution",\
        "fallback": "The items to remove, keep or take."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.item_distribution",\
        "fallback": "Click to open the \"§lItem Distribution§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/item_distribution"\
    }\
  }\
]

##> Show Grave Info
tellraw @s [\
  {\
    "translate": "sgrave2.config.show_grave_info",\
    "fallback": "   Show Grave Info: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info",\
        "fallback": "The contents of a grave that should be shown when a player wants to view the information of a grave. By default, all players can see all information."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.show_grave_info",\
        "fallback": "Click to open the \"§lShow Grave Info§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/show_grave_info"\
    }\
  }\
]

##> Text Display Properties
tellraw @s [\
  {\
    "translate": "sgrave2.config.text_display_properties",\
    "fallback": "   §3Text Display Properties: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.text_display_properties",\
        "fallback": "The properties of the text display part of the grave, which normally shows the owner's name, the GID and the despawn time.\n\n§3ℹ This is an experimental config!"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.text_display_properties",\
        "fallback": "Click to open the \"§lText Display Properties§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/text_display_properties"\
    }\
  }\
]

##> XP Distribution
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution",\
    "fallback": "   XP Distribution: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.xp_distribution",\
        "fallback": "The amount of XP to remove, keep or take."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.xp_distribution",\
        "fallback": "Click to open the \"§lXP Distribution§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/xp_distribution"\
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
          "command": "/function sgrave2:internal/config/open_page/graves"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""