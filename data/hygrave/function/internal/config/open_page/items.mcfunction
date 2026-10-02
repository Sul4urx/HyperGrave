#@> Executed from:
#@>   function hygrave:internal/config/open_page/main

##
tellraw @s ""

## Category: Items
tellraw @s {"translate": "hygrave.config_category.items","fallback": "§lItems"}

##> Grave Placement Restrictions
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_locator",\
    "fallback": "  Grave Locator: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_placement_restrictions",\
        "fallback": "All configs related to the grave locator item"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_locator",\
        "fallback": "Click to open the \"§lGrave Locator§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page_with_sound/click_sound {page: 'items/grave_locator'}"\
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
            "translate": "hygrave.config_go_back_description.main",\
            "fallback": "Click to go back to the main page.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page_with_sound/click_sound {page: 'main'}"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page_with_sound/click_sound {page: 'items'}"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""