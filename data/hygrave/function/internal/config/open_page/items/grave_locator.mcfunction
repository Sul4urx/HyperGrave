#@> Executed from:
#@>   function hygrave:internal/config/open_page/items

##
tellraw @s ""

## Category: Grave Locator
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_locator",\
    "fallback": "Items §7/ §r§lGrave Locator"\
  }\
]

##> Keep After Death
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_locator.keep_after_death",\
    "fallback": "  Keep After Death: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_locator.keep_after_death",\
        "fallback": "If true, the item is kept inside the player's inventory even after death. Overrides Graves / Item Distribution configs."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.items.grave_locator.keep_after_death",\
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
      "command": "/function hygrave:internal/config/toggle/items/grave_locator/keep_after_death"\
    }\
  }\
]

##> Show Distance
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_locator.show_distance",\
    "fallback": "  Show Distance: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_locator.show_distance",\
        "fallback": "If true, shows the approximate distance from the player's position to the grave's position."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.items.grave_locator.show_distance",\
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
      "command": "/function hygrave:internal/config/toggle/items/grave_locator/show_distance"\
    }\
  }\
]

## Locatable Grave Types
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_locator.locatable_grave_types",\
    "fallback": "  Locatable Grave Types: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_locator.locatable_grave_types",\
        "fallback": "The types of grave that a grave locator can locate\n\nFor example if AO (Active Owners) is true, the grave locator can locate all active graves that belong to the player holding the grave locator.\n\nIf all types are set to false, essentially disables grave locator."\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "§bAO: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.items.grave_locator.locatable_grave_types.ao",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_locator.locatable_grave_types.ao",\
            "fallback": "Click to toggle the config's value for active graves that belong to the player holding the grave locator."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/items/grave_locator/locatable_grave_types/ao"\
        }\
      },\
      {\
        "translate": "§b BO: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.items.grave_locator.locatable_grave_types.bo",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_locator.locatable_grave_types.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to the player holding the grave locator."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/items/grave_locator/locatable_grave_types/bo"\
        }\
      },\
      {\
        "translate": "§b AN: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.items.grave_locator.locatable_grave_types.an",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_locator.locatable_grave_types.an",\
            "fallback": "Click to toggle the config's value for active graves that don't belong to the player holding the grave locator."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/items/grave_locator/locatable_grave_types/an"\
        }\
      },\
      {\
        "translate": "§b BN: %s",\
        "with": [\
          {\
            "nbt": "configs.text.items.grave_locator.locatable_grave_types.bn",\
            "storage": "hygrave:common",\
            "interpret": true\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.toggle.grave_locator.locatable_grave_types.bn",\
            "fallback": "Click to toggle the config's value for broken graves that don't belong to the player holding the grave locator."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/items/grave_locator/locatable_grave_types/bn"\
        }\
      }\
    ]\
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
            "translate": "hygrave.config_go_back_description.items",\
            "fallback": "Click to go back to page 'Items'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page_with_sound/click_sound {page: 'items'}"\
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
          "command": "/function hygrave:internal/config/open_page_with_sound/click_sound {page: 'items/grave_locator'}"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""