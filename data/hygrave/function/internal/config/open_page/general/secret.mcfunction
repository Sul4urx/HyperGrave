#@> Executed from:
#@>   [REDACTED]

##
tellraw @s ""

## Category: General / Very Secret Page
tellraw @s {"translate": "hygrave.config_category.general","fallback": " §lGeneral / §c§lVery Secret Page:"}

##> Annoying Mode
tellraw @s [\
  {\
    "translate": "hygrave.config.annoying_mode",\
    "fallback": "   Annoying Mode: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.annoying_mode",\
        "fallback": "If I were you, I wouldn't enable this config. It's a really bad idea.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.general.annoying_mode",\
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
      "command": "/function hygrave:internal/config/toggle/general/annoying_mode"\
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
            "translate": "hygrave.config_go_back_description.general",\
            "fallback": "Click to go back to page 'General'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/general"\
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
          "command": "/function hygrave:internal/config/open_page/general/secret"\
        }\
      }\
    ]\
  }\
]\

##
tellraw @s ""