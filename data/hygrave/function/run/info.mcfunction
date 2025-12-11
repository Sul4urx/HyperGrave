## Prevent loop
scoreboard players set @s hygrave.info 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "hygrave.info",\
  "fallback": "§l§bHyper§l§6Grave§r §fversion %s §8| §fMade By §bSul4ur\n§6ℹ This data pack is heavily in beta. Expect bugs!\n§fA very sophisticated grave data pack with many features and a lot of customizability\n\n§fWeb: §7[%s §7| %s §7| %s §7| %s§7]\n§fGame: §7[%s §7| %s §7| %s§7]",\
  "with": [\
    "§72a0-beta-3",\
    {\
      "translate": "hygrave.info.doc",\
      "fallback": "§aDocumentation",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.doc",\
          "fallback": "Click to open the HyperGrave documentation."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://modrinth.com/datapack/hypergrave"\
      }\
    },\
    {\
      "translate": "hygrave.info.doc",\
      "fallback": "§7Wiki",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.doc",\
          "fallback": "Click to open the HyperGrave wiki.\nThe wiki is similar to the documentation, but it is for advanced features of HyperGrave."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/hypergrave/wiki"\
      }\
    },\
    {\
      "translate": "hygrave.info.issues",\
      "fallback": "§cIssues",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.code",\
          "fallback": "Click to report a bug or suggest a new feature."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/hypergrave/issues"\
      }\
    },\
    {\
      "translate": "hygrave.info.code",\
      "fallback": "§eCode",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.code",\
          "fallback": "Click to view the HyperGrave source code."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/hypergrave"\
      }\
    },\
    \
    \
    {\
      "translate": "hygrave.info.help",\
      "fallback": "§bHelp",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.help",\
          "fallback": "Click to open the in-game help menu."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.help"\
      }\
    },\
    {\
      "translate": "hygrave.info.show_grave_info",\
      "fallback": "§6Grave Info",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.show_grave_info",\
          "fallback": "Click to show the information of the last grave that was generated."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_info"\
      }\
    },\
    \
    \
    {\
      "translate": "hygrave.info.config",\
      "fallback": "§aConfig",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.config",\
          "fallback": "Click to open the config menu (Requires elevated permissions)."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function hygrave:run/config"\
      }\
    },\
  ]\
}

tellraw @s ""