#<< config/open_page/grave_interaction

# Click Behavior

## Insert a newline before the menu
tellraw @s ""

## Category: Click Behavior
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.click_behavior",\
    "fallback": " Grave Interaction §7/ §r§lClick Behavior:"\
  }\
]

## While ICD is not activated
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_not_active",\
    "fallback": "   While ICD is not activated: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_not_active",\
        "fallback": "The click behavior if ICD is not activated"\
      }\
    }\
  }\
]

## Left-click
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_not_active.attack",\
    "fallback": "      Left-click: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_not_active.attack",\
        "fallback": "What to do when the player left-clicks on the grave\n\n§bDo Nothing §7→§f Do nothing.\n§bDrop Contents §7→§f Drop all items and XP stored in the grave.\n§bRetrieve Contents §7→§f Place all items and XP (that are stored in the grave) in the player's inventory.\n\n§8Default: Drop Contents"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_interaction.click_behavior.icd_is_not_active.attack",\
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
      "command": "/function hygrave:internal/config/toggle/grave_interaction/click_behavior/icd_is_not_active/attack"\
    }\
  }\
]

## Right-click
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_not_active.use",\
    "fallback": "      Right-click: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_not_active.use",\
        "fallback": "What to do when the player right-clicks on the grave\n\n§bDo Nothing §7→§f Do nothing.\n§bDrop Contents §7→§f Drop all items and XP stored in the grave.\n§bRetrieve Contents §7→§f Place all items and XP (that are stored in the grave) in the player's inventory.\n\n§8Default: Retrieve Contents"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_interaction.click_behavior.icd_is_not_active.use",\
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
      "command": "/function hygrave:internal/config/toggle/grave_interaction/click_behavior/icd_is_not_active/use"\
    }\
  }\
]

## While ICD is activated
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_not_active",\
    "fallback": "   While ICD is activated: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_not_active",\
        "fallback": "The click behavior if ICD is activated\n\n§bℹ If you don't know what ICD is, refer to the in-game help menu for more information (Use §3/trigger hygrave.help§b)."\
      }\
    }\
  }\
]

## Left-click
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_active.attack",\
    "fallback": "      Left-click: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_active.attack",\
        "fallback": "What to do when the player left-clicks on the grave\n\n§bDo Nothing §7→§f Do nothing.\n§bDrop Contents §7→§f Drop all items and XP stored in the grave.\n§bRetrieve Contents §7→§f Place all items and XP (that are stored in the grave) in the player's inventory.\n§bDrop ICD Item §7→§f Drop the item that is being displayed while ICD is active.\n§bRetrieve ICD Item §7→§f Place the item that is being displayed while ICD is active in the player's hand.\n\n§8Default: Drop ICD Item"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_interaction.click_behavior.icd_is_active.attack",\
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
      "command": "/function hygrave:internal/config/toggle/grave_interaction/click_behavior/icd_is_active/attack"\
    }\
  }\
]

## Right-click
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior.icd_is_active.use",\
    "fallback": "      Right-click: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior.icd_is_active.use",\
        "fallback": "What to do when the player right-clicks on the grave\n\n§bDo Nothing §7→§f Do nothing.\n§bDrop Contents §7→§f Drop all items and XP stored in the grave.\n§bRetrieve Contents §7→§f Place all items and XP (that are stored in the grave) in the player's inventory.\n§bDrop ICD Item §7→§f Drop the item that is being displayed while ICD is active.\n§bRetrieve ICD Item §7→§f Place the item that is being displayed while ICD is active in the player's hand.\n\n§8Default: Retrieve ICD Item"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.grave_interaction.click_behavior.icd_is_active.use",\
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
      "command": "/function hygrave:internal/config/toggle/grave_interaction/click_behavior/icd_is_active/use"\
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
            "translate": "hygrave.config_go_back_description.grave_interaction",\
            "fallback": "Click to go back to page 'Grave Interaction'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/grave_interaction"\
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
          "command": "/function hygrave:internal/config/open_page/grave_interaction/click_behavior"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""