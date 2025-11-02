#<< config/open_page/graves

# Slot Distribution

## Insert a newline before the menu
tellraw @s ""

## Category: Slot Distribution
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.slot_distribution.",\
    "fallback": " Graves §7/ §r§lSlot Distribution:"\
  }\
]

## Grave Generation Fail
tellraw @s [\
  {\
    "translate": "sgrave2.config.slot_distribution.grave_generation_fail",\
    "fallback": "   §7§mGrave Generation Fail:§r ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config.slot_distribution.grave_generation_fail",\
        "fallback": "The slot distribution if the player failed to generate a grave (i.e. didn't have nessecary requirements to generate a grave).\n\nCurrently, this config is not implemented yet."\
      }\
    }\
  }\
]

## Grave Generation Success
tellraw @s [\
  {\
    "translate": "sgrave2.config.slot_distribution.grave_generation_success",\
    "fallback": "   Grave Generation Success: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config.slot_distribution.grave_generation_success",\
        "fallback": "The slot distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave).\n\n§bℹ Format: §7{\"§6§oslot§r§7\": \"§6§ooperation§r§7\", \"§6§oslot§r§7\": \"§6§ooperation§r§7\", §8…§7}\n§6§oslot§r§f can be:\n§7- §ah1§7, §ah2§7, … , §ah9§7 → §fHotbar slots from left to right\n§7- §ait1§7, §ait2§7, … , §ait9§7 → §fInventory top row slots from left to right\n§7- §aim1§7, §aim2§7, … , §aim9§7 → §fInventory middle row slots from left to right\n§7- §aib1§7, §aib2§7, … , §aib9§7 → §fInventory bottom row slots from left to right\n§7- §aoffhand§7, §ahead§7, §achest§7, §alegs§7, §afeet§7 → §fOffhand and armor slots\n\n§6§ooperation§r§f can be:\n§7- §aremove§7 → §fRemove the item in the slot\n§7- §akeep§7 → §fKeep the item in the slot in the player's inventory\n§7- §atake§7 → §fTake the item in the slot from the player's inventory and put it in the grave\n§7- §adefault§7 (Default) → §fApply the config Graves / Item Distribution on the item in the slot.\n\n§7For example: {value:§a{\"h4\": \"remove\", \"h5\": \"keep\", \"head\": \"keep\", \"feet\": \"default\", \"ib2\": \"take\"}§7} → Removes all items in the 4th hotbar slot, keeps items in helmet slot and 5th hotbar slot and takes items from inventory bottom 2nd slot. The config Item Distribution will handle the rest of the slots.\n§7{value:§a{}§7} → §fApplies operation §adefault§f to all items.\n\n§8Default: {}"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.slot_distribution",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/graves/slot_distribution/grave_generation_success {value: {…}}"\
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
            "translate": "sgrave2.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/graves"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/graves/slot_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""