#<< config/open_page/grave_interaction

# ICD Properties

## Insert a newline before the menu
tellraw @s ""

## Category: ICD Properties
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.icd",\
    "fallback": " Grave Interaction §7/ §r§lICD Properties:"\
  }\
]

## Activate For
tellraw @s [\
  {\
    "translate": "hygrave.config.icd.activate_for",\
    "fallback": "   Activate for: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.icd.activate_for",\
        "fallback": "The players whom ICD should be activated for\n§cN §7→§f No one §7(Disables ICD)\n§eO §7→§f The owner\n§aE §7→§r Anyone\n§bℹ This doesn't change who can take items from the grave. To change that, use other configs.\n§8Default: N"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.icd.activate_for",\
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
      "command": "/function hygrave:internal/config/toggle/graves/icd/activate_for"\
    }\
  }\
]

## Item Cycle Cooldown
tellraw @s [\
  {\
    "translate": "hygrave.config.icd.item_cycle_cooldown",\
    "fallback": "   Item Cycle Cooldown: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.icd.item_cycle_cooldown",\
        "fallback": "The amount of time (in ticks, i.e. 1/20 second) it takes for ICD to cycle through the next item.\n§8Default: 20 ticks (1 second)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.icd.item_cycle_cooldown",\
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
      "command": "/function hygrave:internal/config/change/graves/icd/item_cycle_cooldown {value: ?}"\
    }\
  }\
]

## Revert Sneaking Behavior
tellraw @s [\
  {\
    "translate": "hygrave.config.icd.revert_sneaking_behavior",\
    "fallback": "   Revert Sneaking Behavior: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.icd.revert_sneaking_behavior",\
        "fallback": "§a✔ §7→§r ICD is only activated if the player is sneaking\n§c❌ §7→§r ICD is only activated if the player is not sneaking.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.icd.revert_sneaking_behavior",\
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
      "command": "/function hygrave:internal/config/toggle/graves/icd/revert_sneaking_behavior"\
    }\
  }\
]

## Switch Text Display
tellraw @s [\
  {\
    "translate": "hygrave.config.icd.switch_text_display",\
    "fallback": "   Switch Text Display: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.icd.switch_text_display",\
        "fallback": "§a✔ §7→§r The text display will change to show properties about the item §7(Recommended)§r.\n§c❌ §7→§r The text display will remain the same.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.icd.switch_text_display",\
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
      "command": "/function hygrave:internal/config/toggle/graves/icd/switch_text_display"\
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
          "command": "/function hygrave:internal/config/open_page/grave_interaction/icd_properties"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""