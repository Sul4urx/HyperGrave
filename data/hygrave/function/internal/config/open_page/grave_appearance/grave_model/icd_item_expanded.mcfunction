#@> Executed from:
#@>   function hygrave:internal/config/open_page/grave_appearance/grave_model/*_expanded

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
      "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/player_head_expanded"\
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
  }\
]


##> Render
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item.render",\
    "fallback": "      Render: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.icd_item.render",\
        "fallback": "Whether the ICD item should render at all (when ICD is not activated).\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.icd_item.render",\
        "storage": "hygrave:common",\
        "interpret": true\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/icd_item/render"\
    }\
  }\
]

##> Render (ICD)
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item.render_icd",\
    "fallback": "      Render (ICD): ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.icd_item.render_icd",\
        "fallback": "Whether the ICD Item should render at all (when ICD is activated).\n\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.icd_item.render_icd",\
        "storage": "hygrave:common",\
        "interpret": true\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/icd_item/render_icd"\
    }\
  }\
]

##> Position
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item.position",\
    "fallback": "      Position: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.icd_item.position",\
        "fallback": "The position of the ICD Item. Can be one of the following values:\n\n§7• §bHorizontal Floating\n§7• §bHorizontal Slightly Floating\n§7• §bHorizontal Very Slightly Floating\n§7• §bHorizontal Sitting\n§7• §bVertical Floating\n§7• §bVertical Slightly Floating\n§7• §bVertical Very Slightly Floating\n§7• §bVertical Attached\n\n§8Default: Vertical Floating"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.icd_item.position",\
        "storage": "hygrave:common",\
        "interpret": true,\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/icd_item/position"\
    }\
  }\
]

##> Rotation Speed
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item.rotation_speed",\
    "fallback": "      Rotation Speed: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.icd_item.rotation_speed",\
        "fallback": "The rotation speed of the ICD item in degrees per second. If positive, the ICD item will rotate clockwise, otherwise it will rotate counter-clockwise.\n\n§eℹ To prevent the ICD item from rotating, set the value to 0.\n\n§8Default: -60"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.icd_item.rotation_speed",\
        "storage": "hygrave:common",\
        "interpret": true,\
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
      "command": "/function hygrave:internal/config/change/grave_appearance/grave_model/icd_item/rotation_speed {value: ?}"\
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
            "translate": "hygrave.config_go_back_description.grave_appearance",\
            "fallback": "Click to go back to page 'Grave Style & Appearance'.",\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/icd_item_expanded"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""