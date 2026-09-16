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
          "command": "/function hygrave:internal/config/open_page/items"\
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
          "command": "/function hygrave:internal/config/open_page/items/grave_locator"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""