#@> Executed by the player

## Prevent loop
scoreboard players set @s hygrave.info 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "hygrave.info.title",\
  "fallback": "§b§lHyper§6§lGrave§r §fversion %s §8| §fMade By §bSul4ur",\
  "with": ["§72.1.1"]\
}

execute if score (namespace=hygrave,property=is_alpha,schema_version=1) hygrave.data_version matches 1 run tellraw @s {\
  "translate": "hygrave.info.alpha_warning",\
  "fallback": "§cWARNING: Be careful, you're using a version that has not been developed yet. Use it with caution, as it is §nconsidered to be very unstable!§r §cThis version should ONLY be used for testing!"\
}

tellraw @s {\
  "translate": "hygrave.info.description",\
  "fallback": "A very high-quality, customizable, sophisticated and simple-to-use grave data pack / mod"\
}

tellraw @s {\
  "translate": "hygrave.info.links",\
  "fallback": "\n§fWeb: §7[%s §7| %s §7| %s §7| %s §7| %s§7]\n§fGame: §7[%s §7| %s §7| %s§7]",\
  "with": [\
    {\
      "translate": "hygrave.info.links.modrinth",\
      "fallback": "§aModrinth",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.modrinth",\
          "fallback": "Click to open the HyperGrave Modrinth page."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://modrinth.com/datapack/hypergrave"\
      }\
    },\
    {\
      "translate": "hygrave.info.links.pmc",\
      "fallback": "§aP§6M§bC",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.pmc",\
          "fallback": "Click to open the HyperGrave Planet Minecraft page."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://www.planetminecraft.com/data-pack/hypergrave"\
      }\
    },\
    {\
      "translate": "hygrave.info.links.sgrp",\
      "fallback": "§dSGRP",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.info_menu_button_description.sgrp",\
          "fallback": "Click to download Sul4ur's Global Resource Pack.\n\nThis is an optional resource pack for HyperGrave, allowing you to add decorations to the grave model. If you're satisfied with the current grave model, you do not need this resource pack."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://modrinth.com/resourcepack/sul4ur-global-respack"\
      }\
    },\
    {\
      "translate": "hygrave.info.links.issues",\
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
      "translate": "hygrave.info.links.code",\
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
      "translate": "hygrave.info.links.help",\
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
      "translate": "hygrave.info.links.show_grave_info",\
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
    {\
      "translate": "hygrave.info.links.config",\
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