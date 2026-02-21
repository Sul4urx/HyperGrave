#<< config/open_page/grave_appearance/text_display_properties

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: nothing} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).nothing.type",\
        "fallback": "§cNothing",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).nothing.type",\
            "fallback": "Click to change the type of this text field. Replace §anothing§r with the ID of the type you want to change to\n\nCurrent type ID: §anothing §7→ §rNothing. Use this type if you don't want to insert text into this field\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: nothing}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: custom_text} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed.\n\n§bFor example: §6{text: \"Hello!\"} §7→ §6Hello!\n\n§8Current value: %s",\
            "with": [{\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum"\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.type",\
        "fallback": " §bCustom Text",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).custom_text.type",\
            "fallback": "Click to change the type of this text field. Replace §acustom_text§r with the ID of the type you want to change to\n\nCurrent type ID: §acustom_text §7→ §rJust normal text\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: custom_text}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: owner_name} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Owner's Name\n\n§bFor example: §6{text: \"Name: %s§6\"} §7→ §6Name: Sul4ur\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§6%1$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.type",\
        "fallback": " §bOwner's Name",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).owner_name.type",\
            "fallback": "Click to change the type of this text field. Replace §aowner_name§r with the ID of the type you want to change to\n\nCurrent type ID: §aowner_name §7→ §rLike normal text, but with the ability to insert player's name\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: owner_name}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: grave_gid} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Grave GID\n\n§bFor example: §6{text: \"GID: #%s§6\"} §7→ §6GID: #1021\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§6%1$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.type",\
        "fallback": " §bGrave GID",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).grave_gid.type",\
            "fallback": "Click to change the type of this text field. Replace §agrave_gid§r with the ID of the type you want to change to\n\nCurrent type ID: §agrave_gid §7→ §rLike normal text, but with the ability to insert the grave's GID\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: grave_gid}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: despawn_time} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Despawn Time (Hours)\n%s §7→ Despawn Time (Minutes)\n%s §7→ Despawn Time (Seconds)\n\n%s §7→ Despawn Time (Full Minutes)\n%s §7→ Despawn Time (Full Seconds)\n\n§bExamples (Assuming grave despawns in 5331 seconds):\n  §6{text: \"%s§6h : %s§6m : %s§6s\"} §7→ §61h : 28m : 51s\n  §6{text: \"%s§6 seconds (%s§6 minutes)\"} §7→ §65331 seconds (88 minutes)\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§b%2$s", "§b%3$s", "§b%4$s", "§b%5$s", "§6%1$s", "§6%2$s", "§6%3$s", "§6%5$s", "§6%4$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.type",\
        "fallback": " §bDespawn Time",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).despawn_time.type",\
            "fallback": "Click to change the type of this text field. Replace §adespawn_time§r with the ID of the type you want to change to\n\nCurrent type ID: §adespawn_time §7→ §rLike normal text, but with the ability to insert hours, minutes and seconds of despawn time\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: despawn_time}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: creation_time} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Creation Time (Day)\n%s §7→ Creation Time (Hours)\n%s §7→ Creation Time (Minutes)\n\n§bFor example: §6{text: \"Day %s§6 | %s§6 : %s§6\"} §7→ §6Day 23 | 09 : 21\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§b%2$s", "§b%3$s", "§6%1$s", "§6%2$s", "§6%3$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.type",\
        "fallback": " §bCreation Time",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).creation_time.type",\
            "fallback": "Click to change the type of this text field. Replace §acreation_time§r with the ID of the type you want to change to\n\nCurrent type ID: §acreation_time §7→ §rLike normal text, but with the ability to insert day count, hour and minute of creation time\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: creation_time}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: after_death_xp} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ After Death XP (Total)\n%s §7→ After Death XP (Levels)\n%s §7→ After Death XP (Points)\n\n§bFor example: §6{text: \"%s§6 Levels\"} §7→ §631 Levels\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§b%2$s", "§b%3$s", "§6%2$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.type",\
        "fallback": " §bAfter Death XP",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).after_death_xp.type",\
            "fallback": "Click to change the type of this text field. Replace §aafter_death_xp§r with the ID of the type you want to change to\n\nCurrent type ID: §aafter_death_xp §7→ §rLike normal text, but with the ability to insert info about XP stored in the grave\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: after_death_xp}"\
        }\
      },\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: item_count} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Number of items stored in the grave\n\n§bFor example: §6{text: \"%s§6 Items\"} §7→ §66 Items\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§6%1$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.type",\
        "fallback": " §bItem Count",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).item_count.type",\
            "fallback": "Click to change the type of this text field. Replace §aitem_count§r with the ID of the type you want to change to\n\nCurrent type ID: §aitem_count §7→ §rLike normal text, but with the ability to insert hours, minutes and seconds of despawn time\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: item_count}"\
        }\
      }\
    ]\
  }\
]

$execute if data storage hygrave:common configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx){type: icd} run tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx)",\
    "fallback": "     Text $(text_idx): ",\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.text",\
        "fallback": "§b✎ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.text",\
            "fallback": "Click to change the text. Replace §6?§r with the text you want to be displayed. All of the following instances will get replaced accordingly:\n\n%s §7→ Count of item shown while ICD is activated\n%s §7→ Slot of item shown while ICD is activated\n\n§bFor example: §6{text: \"Count: %s§6, Slot: %s§6\"} §7→ §6Count: 6, Slot: Hotbar 1\n\n§8Current value: %s",\
            "with": ["§b%1$s", "§b%2$s", "§6%1$s", "§6%2$s", {\
              "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.translate",\
              "storage": "hygrave:common",\
              "color": "dark_gray",\
            }],\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/text {text_idx: $(text_idx), line_idx: $(line_idx), value: {text: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.color",\
        "fallback": " §b✎ Color ",\
        "with": [\
          {\
            "nbt": "configs.value.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.color",\
            "storage": "hygrave:common",\
            "color": "white",\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.color",\
            "fallback": "Click to change the color of the text field. Replace §6?§r with the ID of the color you want to be displayed. Valid color IDs include:\n§fblack, §1dark_blue, §2dark_green, §3dark_aqua, §4dark_red, §5dark_purple, §6gold, §7gray, §8dark_gray, §9blue, §agreen, §baqua, §cred, §dlight_purple, §eyellow, §fwhite\n§bFor example: §6{color: \"green\"} §7→ §aLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/color {text_idx: $(text_idx), line_idx: $(line_idx), value: {color: \"?\"}}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.bold",\
        "fallback": " §bBold: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.bold",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.bold",\
            "fallback": "Click to toggle the boldness of the text.\n\n§bFor example (If set to true): §6§lLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/bold {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.italic",\
        "fallback": " §bItalic: %s ",\
        "with": [\
          {\
            "nbt": "configs.text.grave_appearance.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).text.italic",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.italic",\
            "fallback": "Click to toggle the italicness of the text.\n\n§bFor example (If set to true): §6§oLorem Ipsum",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/grave_appearance/text_display_properties/icd_text/italic {text_idx: $(text_idx), line_idx: $(line_idx)}"\
        }\
      },\
      {\
        "translate": "hygrave.config.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.type",\
        "fallback": " §bICD Item",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_description.text_display_properties.icd_text.line_$(line_idx).text_$(text_idx).icd.type",\
            "fallback": "Click to change the type of this text field. Replace §aicd§r with the ID of the type you want to change to\n\nCurrent type ID: §aicd §7→ §rLike normal text, but with the ability to insert info about the item being displayed while ICD is activated\n\nValid type IDs: §anothing§r, §acustom_text§r, §aowner_name§r, §agrave_gid§r, §adespawn_time§r, §acreation_time§r, §aafter_death_xp§r, §aitem_count§r, §aicd§r",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/grave_appearance/text_display_properties/icd_text/type {text_idx: $(text_idx), line_idx: $(line_idx), type: icd}"\
        }\
      }\
    ]\
  }\
]