#<< config/open_page/grave_appearance/grave_model/*

## Insert a newline before the menu
tellraw @s ""

## Category: Grave Model
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_model",\
    "fallback": " Grave Appearance §7/ §r§lGrave Model:"\
  }\
]

## Player Head
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head",\
    "fallback": "   Player Head: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head",\
        "fallback": "The model of the player head part of a grave."\
      }\
    }\
  }\
]

##> Render
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.render",\
    "fallback": "      Render: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.render",\
        "fallback": "Whether the player's head should render at all (when ICD is not activated).\n\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.render",\
        "storage": "hygrave:common"\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/player_head/render"\
    }\
  }\
]

##> Render (ICD)
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.render_icd",\
    "fallback": "      Render (ICD): ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.render_icd",\
        "fallback": "Whether the player's head should render at all (when ICD is activated).\n\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.render_icd",\
        "storage": "hygrave:common"\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/player_head/render_icd"\
    }\
  }\
]


##> Glowing
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.glowing",\
    "fallback": "      Glowing: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.glowing",\
        "fallback": "Whether the player's head should have a glow outline, as if they had the glowing status effect.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.glowing",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/player_head/glowing"\
    }\
  }\
]

##> Vertical Position
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.vertical_position",\
    "fallback": "      Vertical Position: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.vertical_position",\
        "fallback": "The vertical position of the player head. Can be one of the following values:\n\n§7• §bFloating\n§7• §bSlightly Floating\n§7• §bVery Slightly Floating\n§7• §bSitting\n§7• §bBuried\n\n§8Default: Floating"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.vertical_position",\
        "storage": "hygrave:common",\
        "color": "aqua"\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/player_head/vertical_position"\
    }\
  }\
]

##> Horizontal Position
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.horizontal_position",\
    "fallback": "      Horizontal Position: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.horizontal_position",\
        "fallback": "The horizontal position of the player head. Can be one of the following values:\n\n§7• §bCenter\n§7• §bBehind\n\n§8Default: Center"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.horizontal_position",\
        "storage": "hygrave:common",\
        "color": "aqua"\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/player_head/horizontal_position"\
    }\
  }\
]

##> Rotation Speed
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.rotation_speed",\
    "fallback": "      Rotation Speed: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.rotation_speed",\
        "fallback": "The rotation speed of the player head in degrees per second. If positive, the player head will rotate clockwise, otherwise it will rotate counter-clockwise.\n\n§eℹ To prevent the player head from rotating, set the value to 0.\n\n§8Default: -60"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.rotation_speed",\
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
      "command": "/function hygrave:internal/config/change/grave_appearance/grave_model/player_head/rotation_speed {value: ?}"\
    }\
  }\
]

##> Shadow Strength
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.player_head.shadow_strength",\
    "fallback": "      Shadow Strength: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.player_head.shadow_strength",\
        "fallback": "The strength of the shadow cast by the player head. Must be a value between 0 and 10000 (inclusive).\n§8Default: 750"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.player_head.shadow_strength",\
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
      "command": "/function hygrave:internal/config/change/grave_appearance/grave_model/player_head/shadow_strength {value: ?}"\
    }\
  }\
]

## Decoration 1
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1",\
    "fallback": "   Decoration 1: "\
  },\
  {\
    "text": "§7[§b⏷§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_expand_secion_description",\
        "fallback": "Click to expand this section. This will collapse all other sections."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/decoration_1_expanded"\
    }\
  }\
]

## Decoration 2
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2",\
    "fallback": "   Decoration 2: "\
  },\
  {\
    "text": "§7[§b⏷§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_expand_secion_description",\
        "fallback": "Click to expand this section. This will collapse all other sections."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/decoration_2_expanded"\
    }\
  }\
]

## ICD Item
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item",\
    "fallback": "   ICD Item: "\
  },\
  {\
    "text": "§7[§b⏷§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_expand_secion_description",\
        "fallback": "Click to expand this section. This will collapse all other sections."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/icd_item_expanded"\
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
            "fallback": "Click to go back to page 'Grave Interaction'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/grave_appearance"\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/player_head_expanded"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""