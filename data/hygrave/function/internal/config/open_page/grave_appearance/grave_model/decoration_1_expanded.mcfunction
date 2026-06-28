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
  }\
]


##> Render
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1.render",\
    "fallback": "      Render: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_1.render",\
        "fallback": "Whether grave decoration 1 should render at all (when ICD is not activated).\n\n§6ℹ Requires Sul4ur's Global Resource Pack for decoration to render properly.\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.render",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_1/render"\
    }\
  }\
]

##> Render (ICD)
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1.render_icd",\
    "fallback": "      Render (ICD): ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_1.render_icd",\
        "fallback": "Whether grave decoration 1 should render at all (when ICD is activated).\n\n§6ℹ Requires Sul4ur's Global Resource Pack for decoration to render properly.\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.render_icd",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_1/render_icd"\
    }\
  }\
]

##> Shape
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1.shape",\
    "fallback": "      Shape: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_1.shape",\
        "fallback": "The shape of grave decoration 1. Can be one of the following values:\n\n§7• §bSquare Slightly Top Rounded\n§7• §bSquare Top Rounded\n§7• §bSquare Slightly Rounded"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.shape",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_1/shape"\
    }\
  }\
]

##> Position
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1.position",\
    "fallback": "      Position: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_1.position",\
        "fallback": "The position of grave decoration 1. Can be one of the following values:\n\n§7• §bPerpendicular §3(to the ground)\n§7• §bParallel §3(to the ground)\n§7• §bParallel §3(to the ground)§b Slightly Front"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.position",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_1/position"\
    }\
  }\
]

##> Texture
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_1.texture",\
    "fallback": "      Texture: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_1.texture",\
        "fallback": "The texture of grave decoration 1. Can be one of the following values:\n\n§7• §bDirt\n§7• §bStone\n§7• §bCobblestone\n§7• §bMossy Cobblestone\n§7• §bStone Bricks\n§7• §bMossy Stone Bricks"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.texture",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_1/texture"\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model/decoration_1_expanded"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""