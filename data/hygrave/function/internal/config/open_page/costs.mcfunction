#<< config/open_page/main

##
tellraw @s ""

## Category: Requirements
tellraw @s {"translate": "hygrave.config_category.costs","fallback": " §lRequirements:"}

##> Looting Graves
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_looting_costs",\
    "fallback": "   Looting Graves: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_looting_costs",\
        "fallback": "The requirements to loot a grave"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_looting_costs",\
        "fallback": "Click to open the \"§lLooting Graves§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/costs/grave_looting_costs"\
    }\
  }\
]

##> Remotely Looting Graves
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_remote_looting_costs",\
    "fallback": "   Remotely Looting Graves: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_remote_looting_costs",\
        "fallback": "The requirements to remotely loot a grave"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_remote_looting_costs",\
        "fallback": "Click to open the \"§lRemotely Looting Graves§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/open_page/costs/grave_remote_looting_costs"\
    }\
  }\
]

##> Generating Graves
tellraw @s [\
  {\
    "translate": "hygrave.config.grave_generation_costs",\
    "fallback": "   Generating Graves: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.grave_generation_costs",\
        "fallback": "The requirements to generate a grave\n§bℹ This doesn't change the amount of XP or item that should be deleted or kept. For that use other configs such as Item Distribution and XP Distribution"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_sub_page_open_description.grave_generation_costs",\
        "fallback": "Click to open the \"§lGenerating Graves§r\" sub-page."\
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