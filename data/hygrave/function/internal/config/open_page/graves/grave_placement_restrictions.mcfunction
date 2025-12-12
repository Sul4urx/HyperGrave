#<< config/open_page/graves

# Grave Placement Restrictions

##
tellraw @s ""

## Category: Grave Placement Restrictions
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.grave_placement_restrictions",\
    "fallback": " Graves §7/ §r§lGrave Placement Restrictions:"\
  }\
]

## Air
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.on_air",\
    "fallback": "   On Air: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.on_air",\
        "fallback": "§a❌ §7→§r Graves can generate on air.\n§c✔ §7→§r Graves will sink to the ground.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.on_air",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/on_air"\
    }\
  }\
]

## Water
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.on_water",\
    "fallback": "   On Water: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.on_water",\
        "fallback": "§a❌ §7→§r Graves can generate on water.\n§c✔ §7→§r Graves will sink down the water.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.on_water",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/on_water"\
    }\
  },\
  {\
    "translate": "hygrave.space_between_configs.value.graves.grave_placement_restrictions.on_water..in_water",\
    "fallback": "                  §l   §r" \
  },\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.in_water",\
    "fallback": "In Water: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.in_water",\
        "fallback": "§a❌ §7→§r Graves can generate in water.\n§c✔ §7→§r Graves will attempt to generate on top of the water.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.in_water",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/in_water"\
    }\
  }\
]

## Lava
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.on_lava",\
    "fallback": "   On Lava: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.on_lava",\
        "fallback": "§a❌ §7→§r Graves can generate on lava.\n§c✔ §7→§r Graves will sink down the lava.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.on_lava",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/on_lava"\
    }\
  },\
  {\
    "translate": "hygrave.space_between_configs.value.graves.grave_placement_restrictions.on_lava..in_lava",\
    "fallback": "                   §l   §r" \
  },\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.in_lava",\
    "fallback": "In Lava: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.in_lava",\
        "fallback": "§a❌ §7→§r Graves can generate in lava.\n§c✔ §7→§r Graves will attempt to generate on top of the lava.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.in_lava",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/in_lava"\
    }\
  }\
]

## (Non-)Solid Blocks
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.on_non_solid_blocks",\
    "fallback": "   On Non-Solid Blocks: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.on_non_solid_blocks",\
        "fallback": "§a❌ §7→§r Graves can generate on non-solid blocks.\n§c✔ §7→§r Graves will attempt to generate inside the non-solid block.\n§bℹ All modded blocks are treated as fully solid blocks, regardless of whether they're actually solid or not.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.on_non_solid_blocks",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/on_non_solid_blocks"\
    }\
  },\
  {\
    "translate": "hygrave.space_between_configs.value.graves.grave_placement_restrictions.on_non_solid_blocks..in_solid_blocks",\
    "fallback": "        " \
  },\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.in_solid_blocks",\
    "fallback": "In Solid Blocks: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.in_solid_blocks",\
        "fallback": "§a❌ §7→§r Graves can generate in solid blocks.\n§c✔ §7→§r Graves will attempt to generate on top of the solid block.\n§bℹ All modded blocks are treated as fully solid blocks, regardless of whether they're actually solid or not.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.in_solid_blocks",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/in_solid_blocks"\
    }\
  }\
]

## Build Height Limit
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.above_build_height_limit",\
    "fallback": "   Above Build height limit: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.above_build_height_limit",\
        "fallback": "§a❌ §7→§r Graves can generate above the maximum build height limit §7(which is Y=319 for Overworld, Y=255 for The Nether and The End)§r.\n§c✔ §7→§r Graves will attempt to generate one block above the maximum build height limit.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.above_build_height_limit",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/above_build_height_limit"\
    }\
  },\
  {\
    "translate": "hygrave.space_between_configs.value.graves.grave_placement_restrictions.above_build_height_limit..below_build_height_limit",\
    "fallback": " §l   §r" \
  },\
  {\
    "translate": "hygrave.config.grave_placement_restrictions.below_build_height_limit",\
    "fallback": "Below Build Height Limit: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.grave_placement_restrictions.below_build_height_limit",\
        "fallback": "§a❌ §7→§r Graves can generate below the minimum build height limit §7(which is Y=-64 for Overworld, Y=0 for The Nether and The End)§r.\n§c✔ §7→§r Graves will attempt to generate one block below the minimum build height limit.\n§bℹ Be careful! Graves cannot survive 64 blocks below the minimum build height limit.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.grave_placement_restrictions.below_build_height_limit",\
        "storage": "hygrave:common" \
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function hygrave:internal/config/toggle/graves/grave_placement_restrictions/below_build_height_limit"\
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
          "value": "/function hygrave:internal/config/open_page/graves/grave_placement_restrictions"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""