#<< config/open_page/grave_appearance/text_display_properties

##
tellraw @s ""

## Category: Text Display Properties / ICD Text
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.text_display_properties.icd_text",\
    "fallback": " Graves §7/§r Text Display Properties §7/ §r§lICD Text:",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_category_description.text_display_properties.icd_text",\
        "fallback": "The displayed text when ICD is activated. The text consists of 3 lines, and each line is separated into 3 fields. The fields will get joined together with spaces seperating the fields, like this:\n\n<field 1> <field 2> <field 3>\n\n§8Default:\n  Line 1 Text 1: \"%s§8\" (color gold, bold false, italic false, type icd)\n  Line 1 Text 2: \"%s§8\" (color green, bold false, italic false, type icd)",\
        "with": ["§8%1$s", "§8%2$s"]\
      }\
    }\
  }\
]

tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_1",\
    "fallback": "   Line 1:"\
  }\
]
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 1, text_idx: 1}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 1, text_idx: 2}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 1, text_idx: 3}

tellraw @s [\
  "\n",\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_2",\
    "fallback": "   Line 2:"\
  }\
]
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 2, text_idx: 1}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 2, text_idx: 2}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 2, text_idx: 3}

tellraw @s [\
  "\n",\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_3",\
    "fallback": "   Line 3:"\
  }\
]
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 3, text_idx: 1}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 3, text_idx: 2}
function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text/show_field {line_idx: 3, text_idx: 3}


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
            "translate": "hygrave.config_go_back_description.text_display_properties",\
            "fallback": "Click to go back to page 'Text Display Properties'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties"\
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
          "command": "/function hygrave:internal/config/open_page/grave_appearance/text_display_properties/icd_text"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""