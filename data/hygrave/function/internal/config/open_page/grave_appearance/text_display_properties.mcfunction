#<< config/open_page/grave_appearance

##
tellraw @s ""

## Category: Text Display Properties
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.text_display_properties",\
    "fallback": " Grave Appearance §7/ §r§lText Display Properties:"\
  }\
]

##> Text
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text",\
    "fallback": "   Text: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.text_display_properties.text",\
        "fallback": "The displayed text when ICD is not activated.",\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.text_display_properties.text",\
        "fallback": "Click to open the \"§lText Display Properties / Text§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties/text"\
    }\
  }\
]

##> ICD Text
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text",\
    "fallback": "   ICD Text: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.text_display_properties.icd_text",\
        "fallback": "The displayed text when ICD is activated.\n\n§bℹ If you don't know what ICD is, refer to the in-game help menu for more information (Use §3/trigger hygrave.help§b).",\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.text_display_properties.icd_text",\
        "fallback": "Click to open the \"§lText Display Properties / ICD Text§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text"\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""