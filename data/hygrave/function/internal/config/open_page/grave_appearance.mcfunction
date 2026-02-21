#<< config/open_page/main

##
tellraw @s ""

## Category: Grave Appearance
tellraw @s {"translate": "hygrave.config_category.grave_appearance","fallback": " §lGrave Appearance:"}

##> Grave Model
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_model",\
    "fallback": "   Grave Model: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_model",\
        "fallback": "The model of the grave."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_model",\
        "fallback": "Click to open the \"§lGrave Model§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/grave_model"\
    }\
  }\
]


##> Text Display Properties
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties",\
    "fallback": "   Text Display Properties: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.text_display_properties",\
        "fallback": "The properties of the text display part of the grave, which normally shows the owner's name, the GID and the despawn time."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.text_display_properties",\
        "fallback": "Click to open the \"§lText Display Properties§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties"\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""