#<! config
#<< config/open_page/*

##
tellraw @s ""

## Title
tellraw @s {"translate": "hygrave.config_title","fallback": "§b§lHyper§6§lGrave §7§lConfigs"}

##
tellraw @s ""

## Main Menu
tellraw @s [\
  "",\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.main_menu.costs",\
        "fallback": " §bCosts ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_page_open_description.costs",\
            "fallback": "All configs about requirements and costs to accomplish certain tasks like looting graves or generating graves\nClick to open page 'Costs'."\
            }\
          },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/costs"\
        }\
      },\
      {\
        "translate": "hygrave.config.main_menu.graves",\
        "fallback": " §bGraves ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_page_open_description.graves",\
            "fallback": "All configs about graves in general\nClick to open page 'Graves'."\
            }\
          },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/graves"\
        }\
      },\
      {\
        "translate": "hygrave.config.main_menu.general",\
        "fallback": " §bGeneral ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_page_open_description.dropped_contents",\
            "fallback": "All unrelated configs"\
            }\
          },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/general"\
        }\
      }\
    ]\
  }\
]

tellraw @s [\
  "\n",\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.main_menu.dropped_contents",\
        "fallback": "     §bDropped Contents    §l ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_page_open_description.dropped_contents",\
            "fallback": "All configs about dropped items and XP from graves\nClick to open page 'Dropped Contents'."\
            }\
          },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/dropped_contents"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""