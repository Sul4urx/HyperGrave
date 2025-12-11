#<< config/open_page/main

##
tellraw @s ""

## Category: Costs
tellraw @s {"translate": "hygrave.config_category.Costs","fallback": " §lCosts:"}

##> Grave Opening-Breaking Costs
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_opening_costs",\
    "fallback": "   Grave Opening-Breaking Costs: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_opening_costs",\
        "fallback": "The costs of opening or breaking a grave"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_opening_costs",\
        "fallback": "Click to open the \"§lGrave Opening-Breaking Costs§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/costs/grave_opening_costs"\
    }\
  }\
]

##> Grave Remote Opening Costs
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_ropening_costs",\
    "fallback": "   Grave Remote Opening Costs: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_ropening_costs",\
        "fallback": "The costs of remotely opening a grave"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_ropening_costs",\
        "fallback": "Click to open the \"§lGrave Remote Opening Costs§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/costs/grave_ropening_costs"\
    }\
  }\
]

##> Grave Generation Costs
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs",\
    "fallback": "   Grave Generation Costs: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs",\
        "fallback": "The costs of generating a grave\n§bℹ This doesn't change the amount of XP or Item that should be deleted or kept. For that use other configs."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_generation_costs",\
        "fallback": "Click to open the \"§lGrave Generation Costs§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/costs/grave_generation_costs"\
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
          "command": "/function hygrave:internal/config/open_page/costs"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""