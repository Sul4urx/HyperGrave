#<< grave/show_info/check_conditions

# Show grave info for destroyed graves not belonging to the player

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
execute unless score (graves/show_grave_info/bn/owner) hygrave.config matches 0 run tellraw @s {\
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
execute unless score (graves/show_grave_info/bn/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/bn/location.dim) hygrave.config matches 0 run tellraw @s {\
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

execute unless score (graves/show_grave_info/bn/location.xyz) hygrave.config matches 0 if score (graves/show_grave_info/bn/location.dim) hygrave.config matches 0 run tellraw @s {\
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
    }\
  ]\
}

execute if score (graves/show_grave_info/bn/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/bn/location.dim) hygrave.config matches 0 run tellraw @s {\
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
      "nbt": "graves[-1].data.dimension.name",\
      "color": "green",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## XP
execute unless score (graves/show_grave_info/bn/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bn/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
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
execute unless score (graves/show_grave_info/bn/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bn/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
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
execute if score (graves/show_grave_info/bn/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bn/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
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
execute if score (graves/show_grave_info/bn/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bn/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
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
execute unless score (graves/show_grave_info/bn/xp/after_death) hygrave.config matches 0 if score (graves/show_grave_info/bn/xp/before_death) hygrave.config matches 0 run tellraw @s {\
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

## Creation time
execute unless score (graves/show_grave_info/bn/creation_time) hygrave.config matches 0 run tellraw @s {\
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
execute unless score (graves/show_grave_info/bn/items) hygrave.config matches 0 run function hygrave:internal/grave/show_info/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"} unless score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
  "translate": "hygrave.grave_info.status.unpacked_by",\
  "fallback": "  §bStatus: §cLooted by %s",\
  "with": [\
      {\
      "nbt": "graves[-1].data.status.destroyer.name",\
      "color": "red",\
      "storage": "hygrave:common"\
    }\
  ]\
}

execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"} if score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.unpacked", \
    "fallback": "  §bStatus: §cLooted"\
  }

execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"} unless score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.remote_unpacked_by",\
    "fallback": "  §bStatus: §cRemotely looted by %s",\
    "with": [\
      {\
        "nbt": "graves[-1].data.status.destroyer.name",\
        "color": "red",\
        "storage": "hygrave:common"\
      }\
    ]\
  }

execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"} if score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.remote_unpacked", \
    "fallback": "  §bStatus: §cRemotely looted"\
  }

execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"} unless score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.popped_by",\
    "fallback": "  §bStatus: §cLooted by %s",\
    "with": [\
      {\
        "nbt": "graves[-1].data.status.destroyer.name",\
        "color": "red",\
        "storage": "hygrave:common"\
      }\
    ]\
  }

execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"} if score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.popped",\
    "fallback": "  §bStatus: §cLooted"\
  }


execute unless score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"despawned"} run tellraw @s {\
    "translate": "hygrave.grave_info.status.despawned",\
    "fallback": "  §bStatus: §cDespawned"\
  }


execute if score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status.destroyer unless score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.destroyed_by",\
    "fallback": "  §bStatus: §cLooted by %s",\
    "with": [\
      {\
        "nbt": "graves[-1].data.status.destroyer.name",\
        "color": "red",\
        "storage": "hygrave:common"\
      }\
    ]\
  }

execute if score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 unless score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 unless data storage hygrave:common graves[-1].data.status.destroyer run tellraw @s {\
    "translate": "hygrave.grave_info.status.destroyed",\
    "fallback": "  §bStatus: §cLooted"\
  }

execute if score (graves/show_grave_info/bn/destruction_type) hygrave.config matches 0 if score (graves/show_grave_info/bn/destroyer) hygrave.config matches 0 run tellraw @s {\
    "translate": "hygrave.grave_info.status.destroyed",\
    "fallback": "  §bStatus: §cBroken"\
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
  "fallback": "§7[%s§7| Loot |%s§7]",\
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