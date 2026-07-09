#@> Executed from:
#@>   function hygrave:internal/config/open_page/graves

# Item Distribution

## Insert a newline before the menu
tellraw @s ""

## Category: Item Distribution
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.item_distribution.",\
    "fallback": " Graves §7/ §r§lItem Distribution:"\
  }\
]

## Grave Generation Fail
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_fail",\
    "fallback": "   Grave Generation Fail: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_fail",\
        "fallback": "The item distribution if the player failed to generate a grave (i.e. didn't have nessecary requirements to generate a grave)."\
      }\
    }\
  }\
]

##> Operation
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_fail.operation",\
    "fallback": "     Operation: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_fail.operation",\
        "fallback": "§cRemove §7→§r If a player fails to generate a grave, all of their items will be removed.\n§aKeep §7→§r If a player fails to generate a grave, all of their items will be kept inside their inventory.\n§eDrop §7→§r If a player fails to generate a grave, all of their items will be dropped.\n\n§8Default: Keep"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.item_distribution.grave_generation_fail.operation",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/toggle/graves/item_distribution/grave_generation_fail/operation"\
    }\
  }\
]

##> Naturalize Drop Acceleration
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_fail.naturalize_drop_acceleration",\
    "fallback": "     Naturalize Drop Acceleration: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_fail.naturalize_drop_acceleration",\
        "fallback": "If true and config Operation is set to §eDrop§r, the items that are being dropped will have a little bit of random acceleration so that it matches the default vanilla behavior for what happens to dropped items when the player dies.\n\nTry this config for yourself to see exactly what I mean!\n\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.item_distribution.grave_generation_fail.naturalize_drop_acceleration",\
        "storage": "hygrave:common",\
        "interpret": true,\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:internal/config/toggle/graves/item_distribution/grave_generation_fail/naturalize_drop_acceleration"\
    }\
  }\
]

## Grave Generation Success
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success",\
    "fallback": "   Grave Generation Success ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success",\
        "fallback": "The item distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave).\n\n§bℹ Items that don't match any of the item predicates in the fields below will be taken by the grave instead.\n\n§6ℹ Requirements for generating graves are applied as if items have already been distributed using this field. For example if a diamond is required to generate a grave and the item distribution config removes all diamonds on grave generation success, the grave will not generate and the field Grave Generation Fail would be used instead. This can be a bit confusing, but it could be important."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.remove",\
    "fallback": "     Remove: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success.remove",\
        "fallback": "Items that will fully get removed from the player's inventory."\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.remove.items.ids",\
    "fallback": "       Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.item_distribution.grave_generation_success.remove.items.ids",\
        "fallback": "A list of IDs of items. These items will get removed from the player's inventory.\n\n§bℹ To find the ID of an item, look for something like §3minecraft:diamond§b in the tooltip of the item. If you can't find it, press F3 + H and try again.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.remove_items",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.items.ids.add",\
            "fallback": "Click to add an item ID to the list.\n\n§bℹ Replace §6?§b with the ID of the item you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/item_ids/add_item {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.items.ids.remove",\
            "fallback": "Click to remove an item from the list.\n\n§bℹ Replace §6?§b with the index of the item you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:diamond', 'minecraft:amethyst', 'minecraft:copper_ingot']§b):\n  §61 §7→ §fRemoves the §61§fst item from the list, which is 'minecraft:diamond'.\n  §62 §7→ §fRemoves the §62§fnd item from the list, which is 'minecraft:amethyst'.\n  §63 §7→ §fRemoves the §63§frd item from the list, which is 'minecraft:copper_ingot'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/item_ids/remove_item_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.items.ids.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6item§7', '§6item§7', '§6item§7', §8...§7] §3(§6item§3 is the ID of the item).§r\n\n§bExample: §3['minecraft:diamond', 'minecraft:wooden_sword', 'minecraft:copper_ingot'] §7→ §bAll diamonds, wooden swords and copper ingots will get removed from the player's inventory.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/item_ids/change_list {value:['item', 'item', ...]}"\
        }\
      }\
    ]\
  }\
]

##>> Enchantments
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.remove.enchs.ids",\
    "fallback": "       Enchantments: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.item_distribution.grave_generation_success.remove.enchs.ids",\
        "fallback": "A list of IDs of enchantments. Items with these enchantments will get removed from the player's inventory.\n\n§bℹ To view a list of IDs of enchantments, use the suggestions provided by the §3/enchant§b command.\n\n§8Current: %s\n§8Default: ['minecraft:vanishing_curse']",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.remove_enchs",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.enchs.add",\
            "fallback": "Click to add an enchantment ID to the list.\n\n§bℹ Replace §6?§b with the ID of the enchantment you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/add_ench {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.enchs.remove",\
            "fallback": "Click to remove an enchantment from the list.\n\n§bℹ Replace §6?§b with the index of the enchantment you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:sharpness', 'minecraft:sweeping_edge', 'minecraft:protection']§b):\n  §61 §7→ §fRemoves the §61§fst enchantment from the list, which is 'minecraft:sharpness'.\n  §62 §7→ §fRemoves the §62§fnd enchantment from the list, which is 'minecraft:sweeping_edge'.\n  §63 §7→ §fRemoves the §63§frd enchantment from the list, which is 'minecraft:protection'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/remove_ench_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.remove.enchs.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6ench§7', '§6ench§7', '§6ench§7', §8...§7] §3(§6ench§3 is the ID of the enchantment).§r\n\n§bExample: §3['minecraft:sharpness', 'minecraft:sweeping_edge', 'minecraft:protection'] §7→ §bAll items with the enchantments Sharpness, Sweeping Edge and Protection will get removed from the player's inventory.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/remove/ench_ids/change_list {value:['ench', 'ench', ...]}"\
        }\
      }\
    ]\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.keep",\
    "fallback": "     Keep: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config.item_distribution.grave_generation_success.keep",\
        "fallback": "Items that will get kept inside the player's inventory."\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.keep.items.ids",\
    "fallback": "       Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.item_distribution.grave_generation_success.keep.items.ids",\
        "fallback": "A list of IDs of items. These items will get kept inside the player's inventory.\n\n§bℹ To find the ID of an item, look for something like §3minecraft:diamond§b in the tooltip of the item. If you can't find it, press F3 + H and try again.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.keep_items",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.items.ids.add",\
            "fallback": "Click to add an item ID to the list.\n\n§bℹ Replace §6?§b with the ID of the item you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/item_ids/add_item {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.items.ids.remove",\
            "fallback": "Click to remove an item from the list.\n\n§bℹ Replace §6?§b with the index of the item you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:diamond', 'minecraft:amethyst', 'minecraft:copper_ingot']§b):\n  §61 §7→ §fRemoves the §61§fst item from the list, which is 'minecraft:diamond'.\n  §62 §7→ §fRemoves the §62§fnd item from the list, which is 'minecraft:amethyst'.\n  §63 §7→ §fRemoves the §63§frd item from the list, which is 'minecraft:copper_ingot'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/item_ids/remove_item_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.items.ids.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6item§7', '§6item§7', '§6item§7', §8...§7] §3(§6item§3 is the ID of the item).§r\n\n§bExample: §3['minecraft:diamond', 'minecraft:wooden_sword', 'minecraft:copper_ingot'] §7→ §bAll diamonds, wooden swords and copper ingots will get kept inside the player's inventory.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/item_ids/change_list {value:['item', 'item', ...]}"\
        }\
      }\
    ]\
  }\
]

##>> Enchantments
tellraw @s [\
  {\
    "translate": "hygrave.config.item_distribution.grave_generation_success.keep.enchs.ids",\
    "fallback": "       Enchantments: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.config_description.item_distribution.grave_generation_success.keep.enchs.ids",\
        "fallback": "A list of IDs of enchantments. Items with these enchantments will get kept inside the player's inventory.\n\n§bℹ To view a list of IDs of enchantments, use the suggestions provided by the §3/enchant§b command.\n\n§8Current: %s\n§8Default: []",\
        "with": [\
          {\
            "nbt": "configs.value.graves.item_distribution.grave_generation_success.keep_enchs",\
            "storage": "hygrave:common",\
            "color": "dark_gray",\
            "plain": true\
          }\
        ]\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§a+ ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.enchs.add",\
            "fallback": "Click to add an enchantment ID to the list.\n\n§bℹ Replace §6?§b with the ID of the enchantment you want to add to the list."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/ench_ids/add_ench {value: '?'}"\
        }\
      },\
      {\
        "text": " §c- ",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.enchs.remove",\
            "fallback": "Click to remove an enchantment from the list.\n\n§bℹ Replace §6?§b with the index of the enchantment you want to remove from the list.\n\n§bExample (Given value is §3['minecraft:sharpness', 'minecraft:sweeping_edge', 'minecraft:protection']§b):\n  §61 §7→ §fRemoves the §61§fst enchantment from the list, which is 'minecraft:sharpness'.\n  §62 §7→ §fRemoves the §62§fnd enchantment from the list, which is 'minecraft:sweeping_edge'.\n  §63 §7→ §fRemoves the §63§frd enchantment from the list, which is 'minecraft:protection'."\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/ench_ids/remove_ench_index {index: ?}"\
        }\
      },\
      {\
        "text": " §b✎",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.config_change_description.item_distribution.grave_generation_success.keep.enchs.change",\
            "fallback": "Click to change the entire list.\n\n§bℹ Format: §7['§6ench§7', '§6ench§7', '§6ench§7', §8...§7] §3(§6ench§3 is the ID of the enchantment).§r\n\n§bExample: §3['minecraft:sharpness', 'minecraft:sweeping_edge', 'minecraft:protection'] §7→ §bAll items with the enchantments Sharpness, Sweeping Edge and Protection will get kept inside the player's inventory.",\
          }\
        },\
        "click_event": {\
          "action": "suggest_command",\
          "command": "/function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/ench_ids/change_list {value:['ench', 'ench', ...]}"\
        }\
      }\
    ]\
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
          "command": "/function hygrave:internal/config/open_page/graves/item_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""