#<! config
#<< config/open_page/*

##
tellraw @s ""

## Title
tellraw @s {"translate": "sgrave2.config_title","fallback": "§b§lS§6§lGrave §7§lConfigs"}

##
tellraw @s ""

## Main Menu
tellraw @s [\
  "",\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "sgrave2.config.main_menu.costs",\
        "fallback": " §bCosts ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_page_open_description.costs",\
            "fallback": "All configs about requirements and costs to accomplish certain tasks like opening or generating graves\nClick to open page 'Costs'."\
            }\
          },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/costs"\
        }\
      },\
      {\
        "translate": "sgrave2.config.main_menu.graves",\
        "fallback": " §bGraves ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_page_open_description.graves",\
            "fallback": "All configs about graves in general\nClick to open page 'Graves'."\
            }\
          },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/graves"\
        }\
      },\
      {\
        "translate": "sgrave2.config.main_menu.general",\
        "fallback": " §bGeneral ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_page_open_description.dropped_contents",\
            "fallback": "All unrelated configs"\
            }\
          },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/general"\
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
        "translate": "sgrave2.config.main_menu.dropped_contents",\
        "fallback": "     §bDropped Contents    §l ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_page_open_description.dropped_contents",\
            "fallback": "All configs about dropped items and XP from graves\nClick to open page 'Dropped Contents'."\
            }\
          },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/dropped_contents"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""