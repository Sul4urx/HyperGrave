## Prevent loop
scoreboard players set @s sgrave2.info 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "sgrave2.info",\
  "fallback": "§l§bS§l§6Grave§r §fversion %s §8| §fMade By §bSul4ur\n§6ℹ This data pack is heavily in beta. Expect bugs!\n§fA very sophisticated grave data pack with many features and a lot of customizability\n\n§fWeb: §7[%s §7| %s §7| %s §7| %s§7]\n§fGame: §7[%s §7| %s §7| %s§7]",\
  "with": [\
    "§72a0-beta-3",\
    {\
      "translate": "sgrave2.info.doc",\
      "fallback": "§aDocumentation",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.doc",\
          "fallback": "Click to open the SGrave documentation."\
        }\
      },\
      "clickEvent": {\
        "action": "open_url",\
        "value": "https://modrinth.com/datapack/sgrave"\
      }\
    },\
    {\
      "translate": "sgrave2.info.doc",\
      "fallback": "§7Wiki",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.doc",\
          "fallback": "Click to open the SGrave wiki.\nThe wiki is similar to the documentation, but it is for advanced features of SGrave."\
        }\
      },\
      "clickEvent": {\
        "action": "open_url",\
        "value": "https://github.com/sul4urx/sgrave/wiki"\
      }\
    },\
    {\
      "translate": "sgrave2.info.issues",\
      "fallback": "§cIssues",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.code",\
          "fallback": "Click to report a bug or suggest a new feature."\
        }\
      },\
      "clickEvent": {\
        "action": "open_url",\
        "value": "https://github.com/sul4urx/sgrave/issues"\
      }\
    },\
    {\
      "translate": "sgrave2.info.code",\
      "fallback": "§eCode",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.code",\
          "fallback": "Click to view the SGrave source code."\
        }\
      },\
      "clickEvent": {\
        "action": "open_url",\
        "value": "https://github.com/sul4urx/sgrave"\
      }\
    },\
    \
    \
    {\
      "translate": "sgrave2.info.help",\
      "fallback": "§bHelp",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.help",\
          "fallback": "Click to open the in-game help menu."\
        }\
      },\
      "clickEvent": {\
        "action": "run_command",\
        "value": "/trigger sgrave2.help"\
      }\
    },\
    {\
      "translate": "sgrave2.info.show_grave_info",\
      "fallback": "§6Grave Info",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.show_grave_info",\
          "fallback": "Click to show the information of the last grave that was generated."\
        }\
      },\
      "clickEvent": {\
        "action": "run_command",\
        "value": "/trigger sgrave2.show_grave_info"\
      }\
    },\
    \
    \
    {\
      "translate": "sgrave2.info.config",\
      "fallback": "§aConfig",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "sgrave2.info_menu_button_description.config",\
          "fallback": "Click to open the config menu (Requires elevated permissions)."\
        }\
      },\
      "clickEvent": {\
        "action": "run_command",\
        "value": "/function sgrave2:run/config"\
      }\
    }\
  ]\
}

tellraw @s ""