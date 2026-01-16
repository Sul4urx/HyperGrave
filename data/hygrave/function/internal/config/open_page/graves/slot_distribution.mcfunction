#<< config/open_page/graves

# Slot Distribution

## Insert a newline before the menu
tellraw @s ""

## Category: Slot Distribution
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.slot_distribution.",\
    "fallback": " Graves §7/ §r§lSlot Distribution:"\
  }\
]

## Slots
tellraw @s [\
  {\
    "translate": "hygrave.config.slot_distribution.slots",\
    "fallback": "   Slots: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.slot_distribution.slots",\
        "fallback": "The slot distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave). You can change the values of this config either the manual way (changing all values of the config at once) or the interactive way (toggling the operation of each slot by clicking). Use the §b✎§r icon to change it the manual way, and use the field below the config title to change it the interactive way.\n\nPossible operations for each slot (Interactive):\n  §7- (Default)§f: Ignores the item in this slot. The config Item Distribution will take care of this item instead.\n  §cR (Remove)§f: The item in this slot will be fully removed from the inventory.\n  §aK (Keep)§f: The item in this slot will be kept inside the player's inventory.\n  §eT (Take)§f: The item in this slot will be taken by the grave.\n\n§bℹ Operations §7Default§b and §eTake§b are similar, but different! For operation §7Default§b, the Item Distribution config is applied to the item, while this isn't true for the operation §eTake§b."\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.slot_distribution.slots",\
        "fallback": "Click to change this config the manual way.\n\n§bℹ Format: §7{§6§oslot§r§7: §6§ooperation§r§7, §6§oslot§r§7: §6§ooperation§r§7, §8…§7}\n§6§oslot§r§f can be:\n§7- §ah1§7, §ah2§7, … , §ah9§7 → §fHotbar slots from left to right\n§7- §ait1§7, §ait2§7, … , §ait9§7 → §fInventory top row slots from left to right\n§7- §aim1§7, §aim2§7, … , §aim9§7 → §fInventory middle row slots from left to right\n§7- §aib1§7, §aib2§7, … , §aib9§7 → §fInventory bottom row slots from left to right\n§7- §aoffhand§7, §ahead§7, §achest§7, §alegs§7, §afeet§7 → §fOffhand and armor slots\n\n§6§ooperation§r§f can be:\n§7- §aremove§7 → §fRemove the item in the slot\n§7- §akeep§7 → §fKeep the item in the slot in the player's inventory\n§7- §atake§7 → §fTake the item in the slot from the player's inventory and put it in the grave\n§7- §adefault§7 (Default) → §fApply the config Item Distribution on the item in the slot.\n\n§7For example: {value:§a{h4: remove, h5: keep, head: keep, feet: default, ib2: take}§7} → Removes all items in the 4th hotbar slot, keeps items in helmet slot and 5th hotbar slot and takes items from inventory bottom 2nd slot. The config Item Distribution will handle the rest of the slots.\n§7{value:§a{}§7} → §fApplies operation §adefault§f to all items."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function hygrave:internal/config/change/graves/slot_distribution/grave_generation_success {value: {…}}"\
    }\
  }\
]

tellraw @s [\
  {\
    "translate": "        §7[%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7]   §7[%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.9",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it1",\
            "fallback": "Click to toggle the operation for the 1st slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '9'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.10",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it2",\
            "fallback": "Click to toggle the operation for the 2nd slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '10'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.11",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it3",\
            "fallback": "Click to toggle the operation for the 3rd slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '11'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.12",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it4",\
            "fallback": "Click to toggle the operation for the 4th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '12'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.13",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it5",\
            "fallback": "Click to toggle the operation for the 5th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '13'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.14",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it6",\
            "fallback": "Click to toggle the operation for the 6th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '14'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.15",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it7",\
            "fallback": "Click to toggle the operation for the 7th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '15'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.16",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it8",\
            "fallback": "Click to toggle the operation for the 8th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '16'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.17",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.it9",\
            "fallback": "Click to toggle the operation for the 9th slot of the inventory top row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '17'}"\
        }\
      },\
      {\
        "translate": "%s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.103",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.head",\
            "fallback": "Click to toggle the operation for the helmet slot."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '103'}"\
        }\
      }\
    ]\
  }\
]\

tellraw @s [\
  {\
    "translate": "        §7[%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7]   §7[%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.18",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im1",\
            "fallback": "Click to toggle the operation for the 1th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '18'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.19",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im2",\
            "fallback": "Click to toggle the operation for the 2nd slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '19'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.20",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im3",\
            "fallback": "Click to toggle the operation for the 3rd slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '20'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.21",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im4",\
            "fallback": "Click to toggle the operation for the 4th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '21'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.22",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im5",\
            "fallback": "Click to toggle the operation for the 5th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '22'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.23",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im6",\
            "fallback": "Click to toggle the operation for the 6th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '23'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.24",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im7",\
            "fallback": "Click to toggle the operation for the 7th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '24'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.25",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im8",\
            "fallback": "Click to toggle the operation for the 8th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '25'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.26",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.im9",\
            "fallback": "Click to toggle the operation for the 9th slot of the inventory middle row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '26'}"\
        }\
      },\
      {\
        "translate": "%s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.102",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.chest",\
            "fallback": "Click to toggle the operation for the chestplate slot."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '102'}"\
        }\
      }\
    ]\
  }\
]\

tellraw @s [\
  {\
    "translate": "        §7[%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7]   §7[%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.27",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib1",\
            "fallback": "Click to toggle the operation for the 1th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '27'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.28",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib2",\
            "fallback": "Click to toggle the operation for the 2nd slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '28'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.29",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib3",\
            "fallback": "Click to toggle the operation for the 3rd slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '29'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.30",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib4",\
            "fallback": "Click to toggle the operation for the 4th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '30'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.31",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib5",\
            "fallback": "Click to toggle the operation for the 5th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '31'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.32",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib6",\
            "fallback": "Click to toggle the operation for the 6th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '32'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.33",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib7",\
            "fallback": "Click to toggle the operation for the 7th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '33'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.34",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib8",\
            "fallback": "Click to toggle the operation for the 8th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '34'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.35",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.ib9",\
            "fallback": "Click to toggle the operation for the 9th slot of the inventory bottom row."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '35'}"\
        }\
      },\
      {\
        "translate": "%s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.101",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.legs",\
            "fallback": "Click to toggle the operation for the leggings slot."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '101'}"\
        }\
      }\
    ]\
  }\
]\

tellraw @s [\
  {\
    "translate": "§l  §r§7[%s§7]  §7[%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7|%s§7]   §7[%s§7]",\
    "with": [\
      {\
        "translate": "%s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.-106",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.offhand",\
            "fallback": "Click to toggle the operation for the offhand slot."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '-106'}"\
        }\
      },\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.0",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h1",\
            "fallback": "Click to toggle the operation for the 1th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '0'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.1",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h2",\
            "fallback": "Click to toggle the operation for the 2nd slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '1'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.2",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h3",\
            "fallback": "Click to toggle the operation for the 3rd slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '2'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.3",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h4",\
            "fallback": "Click to toggle the operation for the 4th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '3'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.4",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h5",\
            "fallback": "Click to toggle the operation for the 5th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '4'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.5",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h6",\
            "fallback": "Click to toggle the operation for the 6th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '5'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.6",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h7",\
            "fallback": "Click to toggle the operation for the 7th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '6'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.7",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h8",\
            "fallback": "Click to toggle the operation for the 8th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '7'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.8",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.h9",\
            "fallback": "Click to toggle the operation for the 9th slot of the hotbar."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '8'}"\
        }\
      },\
      {\
        "translate": "%s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.slot_distribution.grave_generation_success.100",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_toggle_description.slot_distribution.slot_button.feet",\
            "fallback": "Click to toggle the operation for the boots slot."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/toggle/graves/slot_distribution {slot: '100'}"\
        }\
      }\
    ]\
  }\
]\

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
            "translate": "hygrave.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/graves"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:internal/config/open_page/graves/slot_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""