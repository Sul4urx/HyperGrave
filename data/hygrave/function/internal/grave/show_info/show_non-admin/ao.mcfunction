#<< grave/show_info/check_conditions

# Show grave info for active graves belonging to the player

## Prepare to show despawn time
## by converting from ticks to seconds, minutes and hours
execute store result score .despawn_time hygrave.temp_var run data get storage hygrave:common graves[-1].data.despawn_time
scoreboard players operation .despawn_time.seconds hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.seconds hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.minutes hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.minutes hygrave.temp_var /= (60) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var

## Title
tellraw @s [\
  {\
    "translate": "hygrave.grave_info.title",\
    "fallback": "\nGrave §6#%s info",\
    "with": [\
      {\
        "nbt": "graves[-1].data.gid",\
        "storage": "hygrave:common",\
        "color": "gold"\
      }\
    ]\
  }\
]

## Owner
execute unless score (graves/show_grave_info/ao/owner) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.owner",\
  "fallback": "  §bOwner: %s",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.owner.description",\
      "fallback": "The player who generated the grave."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].data.owner.name", \
      "color": "green", \
      "storage": "hygrave:common"\
    }\
  ]\
}

## Location
execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.location.all", \
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.location.all.description",\
      "fallback": "The exact location the grave was generated in (NOT where the player died, that can be different sometimes)."\
    }\
  },\
  "fallback": "  §bLocation: %s §7(%s§7)",\
  "with": [\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "separator": "§7, "\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "color": "green",\
      "storage": "hygrave:common"\
    }\
  ]\
}

execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 if score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.location.xyz", \
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.location.xyz.description",\
      "fallback": "The exact X, Y and Z coordinates the grave was generated in (NOT where the player died, that can be different sometimes).\n\nThe admin doesn't allow me to show the dimension as well, for some reason. The admin is kinda a weird guy in my opinion, but I don't really know, maybe there is a good reason why they did this... I mean why would the admin want to show the exact coordinates but not the dimension? what's the point???"\
    }\
  },\
  "fallback": "  §bLocation: %s",\
  "with": [\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "separator": "§7, "\
    },\
  ]\
}

execute if score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.location.dim", \
  "fallback": "  §bDimension: %s",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
        "translate": "hygrave.grave_info.localtion.dim.description",\
        "fallback": "The dimension the grave was generated in."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "separator": "§7, "\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "color": "green",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## XP
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
    "translate": "hygrave.grave_info.xp",\
    "fallback": "  §bExperience:\n    §eBefore death: %s (%s levels §7+ %s points)\n    §eAfter death: %s (%s levels §7+ %s points)", \
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.grave_info.xp.description",\
        "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave)."\
      }\
    },\
    "with": [\
      {\
        "nbt": "graves[-1].contents.xp.before_death.total",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.before_death.levels",\
        "color": "gold", \
        "storage": "hygrave:common"\
      }, \
      {\
        "nbt": "graves[-1].contents.xp.before_death.points",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.total",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.levels",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.points",\
        "color": "gold", \
        "storage": "hygrave:common"\
      }\
    ]\
  }

##> If before death total is too big, get rid of it
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
    "translate": "hygrave.grave_info.xp.before_death_total_too_big",\
    "fallback": "  §bExperience:\n    §eBefore death: %s levels §7+ %s points\n    §eAfter death: %s (%s levels §7+ %s points)", \
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.grave_info.xp.before_death_total_too_big.description",\
        "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave)."\
      }\
    },\
    "with": [\
      {\
        "nbt": "graves[-1].contents.xp.before_death.levels",\
        "color": "gold", \
        "storage": "hygrave:common"\
      }, \
      {\
        "nbt": "graves[-1].contents.xp.before_death.points",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.total",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.levels",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.points",\
        "color": "gold", \
        "storage": "hygrave:common"\
      }\
    ]\
  }

##> XP before death
execute if score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
    "translate": "hygrave.grave_info.xp.before_death_only",\
    "fallback": "  §bXP (Before death): %s (%s levels §7+ %s points)",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.grave_info.xp.before_death_only.description",\
        "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave).\nYou're not allowed to see the After death XP of this grave."\
      }\
    },\
    "with": [\
      {\
        "nbt": "graves[-1].contents.xp.before_death.total",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.before_death.levels",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.before_death.points",\
        "color": "gold",\
        "storage": "hygrave:common"\
      }\
    ]\
  }

##>> If total is too big, get rid of it
execute if score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
    "translate": "hygrave.grave_info.xp.before_death_only.before_death_total_too_big",\
    "fallback": "  §bXP (Before death): %s levels §7+ %s points",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.grave_info.xp.before_death_only.before_death_total_too_big.description",\
        "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave).\nYou're not allowed to see the After death XP of this grave."\
      }\
    },\
    "with": [\
      {\
        "nbt": "graves[-1].contents.xp.before_death.levels",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.before_death.points",\
        "color": "gold",\
        "storage": "hygrave:common"\
      }\
    ]\
  }

##> XP after death
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 if score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.xp.after_death_only",\
    "fallback": "  §bXP (After death): %s (%s levels §7+ %s points)",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "hygrave.grave_info.xp.after_death_only.description",\
        "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave).\nYou're not allowed to see the Before death XP of this grave."\
      }\
    },\
    "with": [\
      {\
        "nbt": "graves[-1].contents.xp.after_death.total",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.levels",\
        "color": "gold",\
        "storage": "hygrave:common"\
      },\
      {\
        "nbt": "graves[-1].contents.xp.after_death.points",\
        "color": "gold", \
        "storage": "hygrave:common"\
      }\
    ]\
  }

## Despawn time
execute unless score (graves/show_grave_info/ao/despawn_time) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.despawn_time",\
  "fallback": "  §bDespawn time: %s hours§7, %s minutes§7, %s seconds",\
  "with": [\
    {\
      "score": {\
        "name": ".despawn_time.hours",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    }, \
    {\
      "score": {\
        "name": ".despawn_time.minutes",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    },\
    {\
      "score": {\
        "name": ".despawn_time.seconds",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    }\
  ]\
}


## Creation time
execute unless score (graves/show_grave_info/ao/creation_time) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.creation_time",\
  "fallback": "  §bCreation time: §rDay %s§7, %s hours §7: %s minutes",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.creation_time.description",\
      "fallback": "The in-game time the grave was generated at."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].data.creation_time.day",\
      "color": "gold",\
      "storage": "hygrave:common"\ 
    },\
    {\
      "nbt": "graves[-1].data.creation_time.hours",\
      "color": "gold",\
      "storage": "hygrave:common"\ 
    },\
    {\
      "nbt": "graves[-1].data.creation_time.minutes",\
      "color": "gold",\
      "storage": "hygrave:common"\ 
    }\
  ]\
}

## Items
execute unless score (graves/show_grave_info/ao/items) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
tellraw @s {\
  "translate": "hygrave.grave_info.status.active",\
  "fallback": "  §bStatus: §aActive"\
}


##
tellraw @s ""

## Menu
$execute unless data storage hygrave:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "hygrave.grave_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7]",\
  "with": [\
    {\
      "translate": "hygrave.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_info.view_previous set $(gid)"\
      }\
    },\
    {\
      "translate": "hygrave.grave_info.menu.remote_unpack",\
      "fallback": " §bLoot ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.remote_unpack",\
          "fallback": "Click to remotely loot this grave."\
        }\
      },\
      "click_event": {\
        "action": "suggest_command",\
        "command": "/trigger hygrave.remote_loot_grave set $(gid)"\
      }\
    },\
    {\
      "translate": "hygrave.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_info.view_next set $(gid)"\
      }\
    }\
  ]\
}
$execute if data storage hygrave:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "hygrave.grave_info.menu_no_remote_unpack",\
  "fallback": "§7[%s§7| Unpack |%s§7]",\
  "with": [\
    {\
      "translate": "hygrave.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_info.view_previous set $(gid)"\
      }\
    },\
    {\
      "translate": "hygrave.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_info.view_next set $(gid)"\
      }\
    }\
  ]\
}

##
tellraw @s ""