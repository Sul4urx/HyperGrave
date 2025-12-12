#<< config/open_page/main

##
tellraw @s ""

## Category: Players
tellraw @s {"translate": "sgrave2.config_category.players","fallback": " §lPlayers:"}

##
tellraw @s ""

## Config page menu
tellraw @s [\
  {\
    "translate": "§7[%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§c< Back ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_go_back_description.main",\
            "fallback": "Click to go back to the main page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/main"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/players"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""
