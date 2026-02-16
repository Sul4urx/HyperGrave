#<< config/open_page/grave_appearance

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
        "fallback": "Whether grave decoration 1 should render at all (when ICD is not activated).\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.render",\
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
        "fallback": "Whether grave decoration 1 should render at all (when ICD is activated).\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_1.render_icd",\
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
  }\
]

##> Render
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2.render",\
    "fallback": "      Render: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_2.render",\
        "fallback": "Whether grave decoration 2 should render at all (when ICD is not activated).\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_2.render",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_2/render"\
    }\
  }\
]

##> Render (ICD)
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2.render_icd",\
    "fallback": "      Render (ICD): ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_2.render_icd",\
        "fallback": "Whether grave decoration 2 should render at all (when ICD is activated).\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_2.render_icd",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_2/render_icd"\
    }\
  }\
]

##> Shape
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2.shape",\
    "fallback": "      Shape: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_2.shape",\
        "fallback": "The shape of grave decoration 2. Can be one of the following values:\n\n§7• §bSquare Slightly Top Rounded\n§7• §bSquare Top Rounded\n§7• §bSquare Slightly Rounded"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_2.shape",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_2/shape"\
    }\
  }\
]

##> Position
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2.position",\
    "fallback": "      Position: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_2.position",\
        "fallback": "The position of grave decoration 2. Can be one of the following values:\n\n§7• §bPerpendicular §3(to the ground)\n§7• §bParallel §3(to the ground)\n§7• §bParallel §3(to the ground)§b Slightly Front"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_2.position",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_2/position"\
    }\
  }\
]

##> Texture
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.decoration_2.texture",\
    "fallback": "      Texture: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.decoration_2.texture",\
        "fallback": "The texture of grave decoration 2. Can be one of the following values:\n\n§7• §bDirt\n§7• §bStone\n§7• §bCobblestone\n§7• §bMossy Cobblestone\n§7• §bStone Bricks\n§7• §bMossy Stone Bricks"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_appearance.grave_model.decoration_2.texture",\
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
      "command": "/function hygrave:internal/config/toggle/grave_appearance/grave_model/decoration_2/texture"\
    }\
  }\
]

## ICD Item
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model.icd_item",\
    "fallback": "   ICD Item: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model.icd_item",\
        "fallback": "The model of the ICD item.\n\n§eℹ Remember that you can choose to display the ICD item even if ICD is technically not activated.\n\n§bℹ If you don't know what ICD is, refer to the in-game help menu for more information (Use §3/trigger hygrave.help§b)."\
      }\
    }\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""