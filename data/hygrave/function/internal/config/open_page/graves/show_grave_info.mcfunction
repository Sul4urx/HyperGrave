#<< config/open_page/graves

##
tellraw @s ""

## Category: Show Grave Info
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config_category.show_grave_info",\
    "fallback": " Graves §7/ §r§lShow Grave Info:"\
  },\
  "\n\n            ",\
  {\
    "text":"AO§l §r",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.ao",\
        "fallback": "For active graves that belong to the reader (§lA§rctive §lO§rwner)"\
      }\
    }\
  },\
  {\
    "text":"BO§l §r",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.bo",\
        "fallback": "For destroyed graves that belong to the reader (§lB§rroken §lO§rwner)"\
      }\
    }\
  },\
  {\
    "text":"AN§l §r",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.an",\
        "fallback": "For active graves that belong to other players (§lA§rctive §lN§ron-Owner)"\
      }\
    }\
  },\
  {\
    "text":"BN§l §r",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.bn",\
        "fallback": "For destroyed graves that belong to other players (§lB§rroken §lN§ron-Owner)"\
      }\
    }\
  }\
]

## ALL
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.all",\
    "fallback": "   ALL:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.all",\
        "fallback": "If false, grave info will not be shown at all. §7(ALL grave info)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.all",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/all"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.all",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/all"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.all",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/all"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.all",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/all"\
        }\
      }\
    ]\
  }\
]

## OWN
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.owner",\
    "fallback": "   OWN:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.owner",\
        "fallback": "Whether the owner of the grave should be shown. §7(OWNer)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.owner",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/owner"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.owner",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/owner"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.owner",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/owner"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.owner",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/owner"\
        }\
      }\
    ]\
  }\
]

## LOC
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.location_xyz",\
    "fallback": "   LOC:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.location_xyz",\
        "fallback": "Whether the coordinates of the grave should be shown. §7(LOcation Coordinates)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.location.xyz",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/location_xyz"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.location.xyz",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/location_xyz"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.location.xyz",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/location_xyz"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.location.xyz",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/location_xyz"\
        }\
      }\
    ]\
  }\
]

## LOD
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.location_dim",\
    "fallback": "   LOD:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.location_dim",\
        "fallback": "Whether the dimension the grave was generated in should be shown. §7(LOcation Dimension)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.location.dim",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/location_dim"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.location.dim",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/location_dim"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.location.dim",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/location_dim"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.location.dim",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/location_dim"\
        }\
      }\
    ]\
  }\
]

## DST
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.despawn_time",\
    "fallback": "   DST:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.despawn_time",\
        "fallback": "Whether the despawn time of the grave should be shown. §7(DeSpawn Time)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7| ❌ §7|%s§7| ❌§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.despawn_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/despawn_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.despawn_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/despawn_time"\
        }\
      }\
    ]\
  }\
]

## CRT
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.creation_time",\
    "fallback": "   CRT:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.creation_time",\
        "fallback": "Whether the in-game time the grave was generated at should be shown. §7(CReation Time)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.creation_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/creation_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.creation_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/creation_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.creation_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/creation_time"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.creation_time",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/creation_time"\
        }\
      }\
    ]\
  }\
]

## ITM
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.items",\
    "fallback": "   ITM:§l §r   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.items",\
        "fallback": "Whether the items of the grave should be shown. §7(ITeMs)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.items",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/items"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.items",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/items"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.items",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/items"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.items",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/items"\
        }\
      }\
    ]\
  }\
]

## XPB
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.xp_before_death",\
    "fallback": "   XPB:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.xp_before_death",\
        "fallback": "Whether the experience the player had right before they died should be shown. §7(XP Before death)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.xp.before_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.xp.before_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.xp.before_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.xp.before_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/xp_before_death"\
        }\
      }\
    ]\
  }\
]

## XPA
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.xp_after_death",\
    "fallback": "   XPA:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.xp_after_death",\
        "fallback": "Whether the experience that is stored in the grave (i.e. the experience the player is going to get after destroying the grave) should be shown. §7(XP After death)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.xp.after_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.ao",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/ao/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.xp.after_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.xp.after_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.an",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/an/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.xp.after_death",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/xp_after_death"\
        }\
      }\
    ]\
  }\
]

## DTP
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.destruction_type",\
    "fallback": "   DTP:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.destruction_type",\
        "fallback": "Whether how the grave was destroyed should be shown (e.g. destroyed, opened, despawned). §7(Destruction TyPe)"\
      }\
    }\
  },\
  {\
    "translate": "§7[❌ §7|%s§7| ❌ §7|%s§7]",\
    "with": [\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.destruction_type",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/destruction_type"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.destruction_type",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/destruction_type"\
        }\
      }\
    ]\
  }\
]

## DER
tellraw @s [\
  "",\
  {\
    "translate": "hygrave.config.show_grave_info.destroyer",\
    "fallback": "   DER:§l   ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "hygrave.config_description.show_grave_info.destroyer",\
        "fallback": "Whether the player who destroyed the grave should be shown. §7(DestroyER)"\
      }\
    }\
  },\
  {\
    "translate": "§7[❌ §7|%s§7| ❌ §7|%s§7]",\
    "with": [\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.destroyer",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for destroyed graves."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bo/destroyer"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.destroyer",\
            "storage": "hygrave:common"\
          }\
        ],\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "hygrave.config_change_description.toggle.show_grave_info.bn",\
            "fallback": "Click to toggle the config's value for destroyed graves that belong to other players."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function hygrave:internal/config/toggle/graves/show_grave_info/bn/destroyer"\
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
          "value": "/function hygrave:internal/config/open_page/graves/show_grave_info"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""