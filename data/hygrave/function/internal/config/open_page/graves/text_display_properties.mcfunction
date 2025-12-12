#<< config/open_page/main

##
tellraw @s ""

## Category: Text Display Properties
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.text_display_properties",\
    "fallback": " Graves §7/ §r§lText Display Properties:"\
  }\
]

##> Text
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text",\
    "fallback": "   Text: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text",\
        "fallback": "The displayed text. Uses text component format (i.e. The format used in /tellraw command).\n\nThe text config has 3 sub-configs: Text 1, Despawn Time Text, Text 2. These sub-configs are concentrated (i.e. joined) together to form the text display.\n\n§bIf you are not familiar with text component format: \n§fJust change the §7translate§f field with the autocompleted option. To type certain characters or modify text, use these escape sequences:\n §7• %%%% §7→§f %%\n §7• \\\\\\\\n §7→§f New line\n §7• \\\\\\\\u0022 §7→§f \"\n §7• \\\\\\\\u0027 §7→§f '\n §7• \\\\\\\\s §7→§f Space\n §7• \\\\\\\\\\\\\\\\ §7→§f \\\n §7• \\\\\\\\u00a7§o?§r §7→§f Changes the next characters' color and effects. Replace §o?§f with these characters to produce the following result:\n  §11 §22 §33 §44 §55 §66 §77 §88 §99 §00 §aa §bb §cc §dd §ee §ff §ll§r §oo§r §nn§r\n  m §7→§f §mStrikethrough§r\n  k §7→§f §kGibberish§r\n  r §7→§f Reset color and effects\nThis is just a simple and basic part of text component fomrat. It's highly recommended to learn how to use text component format to further customize the text.\n\n§bℹ You can't modify the sub-configs in the chat due to the 255 character limit. You have to use a command block for that."\
      }\
    }\
  }\
]

##>> Text 1
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.text1",\
    "fallback": "     Text 1: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.text1",\
        "fallback": "Text 1. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§61$s §7→§f GID\n §7• %s§62$s §7→§f Owner's name\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"%2$s \\\\\\\\u00a76#%1$s\\\\\\\\n\", with: [{nbt: \"temp.text_display.gid\", storage: \"hygrave:common\", color: \"gold\"}, {nbt: \"temp.text_display.owner.name\", storage: \"hygrave:common\", color: \"green\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.text1",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.text1",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/text1 with entity @s"\
    }\
  }\
]

##>> Despawn Time Text
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.despawn_time_text",\
    "fallback": "     Despawn Time Text: "\
  }\
]

##>>> 0-59 Seconds
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.despawn_time_text.0-59_seconds",\
    "fallback": "       0-59 Seconds: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.despawn_time_text.0-59_seconds",\
        "fallback": "Despawn Time Text if the despawn time of the grave was from 0 to 59 seconds. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§6s §7→§f Seconds\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"%s\\\\\\\\u00a7cs\", with: [{nbt: \"temp.text_display.despawn_time.seconds\", storage: \"hygrave:common\", color: \"red\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.despawn_time_text.0-59_seconds",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.despawn_time_text.0-59_seconds",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/despawn_time_text/0-59s with entity @s"\
    }\
  }\
]

##>>> 1-59 Minutes
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.despawn_time_text.1-59_minutes",\
    "fallback": "       1-59 Minutes: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.despawn_time_text.1-59_minutes",\
        "fallback": "Despawn Time Text if the despawn time of the grave was from 1 to 59 Minutes. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§61$s §7→§f Seconds\n §7• %s§62$s §7→§f Full seconds (i.e. can be bigger than 59)\n §7• %s§63$s §7→§f Minutes\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"%3$s\\\\\\\\u00a7cmin : %1$s\\\\\\\\u00a7cs\", with: [{nbt: \"temp.text_display.despawn_time.seconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fseconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.minutes\", storage: \"hygrave:common\", color: \"red\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.despawn_time_text.1-59_minutes",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.despawn_time_text.1-59_minutes",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/despawn_time_text/1-59min with entity @s"\
    }\
  }\
]

##>>> 1-99 Hours
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.despawn_time_text.1-99_hours",\
    "fallback": "       1-99 Hours: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.despawn_time_text.1-99_hours",\
        "fallback": "Despawn Time Text if the despawn time of the grave was from 1 to 99 Hours. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§61$s §7→§f Seconds\n §7• %s§62$s §7→§f Full seconds (i.e. can be bigger than 59)\n §7• %s§63$s §7→§f Minutes\n §7• %s§64$s §7→§f Full Minutes (i.e.can be bigger than 59)\n §7• %s§65$s §7→§f Hours\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"%5$s\\\\\\\\u00a7chr : %3$s\\\\\\\\u00a7cmin\", with: [{nbt: \"temp.text_display.despawn_time.seconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fseconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.minutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fminutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.hours\", storage: \"hygrave:common\", color: \"red\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.despawn_time_text.1-99_hours",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.despawn_time_text.1-99_hours",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/despawn_time_text/1-99h with entity @s"\
    }\
  }\
]

##>>> 99+ Hours
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.despawn_time_text.99+_hours",\
    "fallback": "       99+ Hours: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.despawn_time_text.99+_hours",\
        "fallback": "Despawn Time Text if the despawn time of the grave was higher than 99 Hours. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§61$s §7→§f Seconds\n §7• %s§62$s §7→§f Full seconds (i.e. can be bigger than 59)\n §7• %s§63$s §7→§f Minutes\n §7• %s§64$s §7→§f Full Minutes (i.e.can be bigger than 59)\n §7• %s§65$s §7→§f Hours\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"\\\\\\\\u00a7c99+ hours\", with: [{nbt: \"temp.text_display.despawn_time.seconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fseconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.minutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fminutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.hours\", storage: \"hygrave:common\", color: \"red\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.despawn_time_text.99+_hours",\
        "fallback": "Click to change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.despawn_time_text.99+_hours",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/despawn_time_text/99h with entity @s"\
    }\
  }\
]

##>> Text 2
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.text.text2",\
    "fallback": "     Text 2: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.text.text2",\
        "fallback": "Text 2. \n\n§bIf you are not familiar with text component format: \n§fCodes:\n §7• %s§61$s §7→§f GID\n §7• %s§62$s §7→§f Owner's name\n\n§8Default: {}",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.text.text2",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.text.text2",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/text/text2 with entity @s"\
    }\
  }\
]

##> ICD Text
tellraw @s [\
  {\
    "translate": "hygrave.config.text_display_properties.icd_text.",\
    "fallback": "   ICD Text: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.text_display_properties.icd_text.",\
        "fallback": "The displayed text when ICD is activated. Uses text component format (i.e. The format used in /tellraw command).\n\n§bIf you are not familiar with text component format: \n§fJust change the §7translate§f field with the autocompleted option. To type certain characters or modify text, use these escape sequences:\n §7• %%%% §7→§f %%\n §7• \\\\\\\\n §7→§f New line\n §7• \\\\\\\\u0022 §7→§f \"\n §7• \\\\\\\\u0027 §7→§f '\n §7• \\\\\\\\s §7→§f Space\n §7• \\\\\\\\\\\\\\\\ §7→§f \\\n §7• \\\\\\\\u00a7§o?§r §7→§f Changes the next characters' color and effects. Replace §o?§f with these characters to produce the following result:\n  §11 §22 §33 §44 §55 §66 §77 §88 §99 §00 §aa §bb §cc §dd §ee §ff §ll§r §oo§r §nn§r\n  m §7→§f §mStrikethrough§r\n  k §7→§f §kGibberish§r\n  r §7→§f Reset color and effects\n\n§fCodes:\n §7• %s§61$s §7→§f Current item count\n §7• %s§62$s §7→§f Current item slot\nThis is just a simple and basic part of text component fomrat. It's highly recommended to learn how to use text component format to further customize the text.\n\n§bℹ You can't modify the sub-configs in the chat due to the 255 character limit. You have to use a command block for that.\n\n§bℹ If config Switch Text Display in Graves / ICD Properties is set to false, this field will not be used.\n\n§8Default: %s",\
        "with": [\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "%",\
            "color": "gold"\
          },\
          {\
            "text": "{translate: \"%1$s %2$s\\\\\\\\n\", with: [{nbt: \"temp.text_display.icd.item.count\", storage: \"hygrave:common\", color: \"gold\"}, {nbt: \"temp.text_display.icd.item.slot_name\", storage: \"hygrave:common\", color: \"green\"}]}",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    }\
  },\
  {\
    "text": "§7[§e✎§7]",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.text_display_properties.icd_text.",\
        "fallback": "Click to receive a command block and change the value.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.value.graves.text_display.icd_text",\
            "storage": "hygrave:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/give_cmd_block/graves/text_display/icd_text with entity @s"\
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
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/open_page/graves"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/open_page/graves/text_display_properties"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""
