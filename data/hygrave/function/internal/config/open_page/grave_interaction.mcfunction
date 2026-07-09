#@> Executed from:
#@>   function hygrave:internal/config/open_page/main

##
tellraw @s ""

## Category: Grave Interaction
tellraw @s {"translate": "hygrave.config_category.grave_interaction","fallback": " §lGrave Interaction"}

##> ICD Properties
tellraw @s [\
  {\
    "translate": "hygrave.config.icd",\
    "fallback": "   ICD Properties: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.icd",\
        "fallback": "The properties of the ICD feature.\n\n§bℹ If you don't know what ICD is, refer to the in-game help menu for more information (Use §3/trigger hygrave.help§b)."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.icd",\
        "fallback": "Click to open the \"§lICD Properties§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_interaction/icd_properties"\
    }\
  }\
]

##> Click Behavior
tellraw @s [\
  {\
    "translate": "hygrave.config.click_behavior",\
    "fallback": "   Click Behavior: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.click_behavior",\
        "fallback": "What happens when a player clicks on the grave."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.click_behavior",\
        "fallback": "Click to open the \"§lClick Behavior§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_interaction/click_behavior"\
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
          "command": "/function hygrave:internal/config/open_page/main"\
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
          "command": "/function hygrave:internal/config/open_page/grave_interaction"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""