#<! admin/show_grave_info

## Read the input GID and store it
execute store result storage hygrave:common temp.args.gid int 1 run scoreboard players get @s hygrave.show_grave_info

## Check if any graves have been generated yet
execute unless data storage hygrave:common graves[0] run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Check if the grave has ever existed before
execute store result score .grave_exists hygrave.temp_var run function hygrave:internal/grave/show_info/check_if_grave_exists with storage hygrave:common temp.args

## If not, tell error to player
execute if score .grave_exists hygrave.temp_var matches 0 run return run title @s actionbar {\
  "translate": "hygrave.grave_info.fail.gid_no_exist",\
  "fallback": "§cGrave #%s§c does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.gid",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}


## Bring the nessecary elements of maps to last index so that we can work with them

##> Grave
function hygrave:internal/map/graves/lookup with storage hygrave:common temp.args

## Prevent loop
scoreboard players set @s hygrave.show_grave_info 0

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
tellraw @s {\
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
tellraw @s {\
  "translate": "hygrave.grave_info.location", \
  "fallback": "  §bLocation: %s §7(%s§7)",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.location.all.description",\
      "fallback": "The exact location the grave was generated in (NOT where the player died, that can be different sometimes)."\
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
tellraw @s {\
  "translate": "hygrave.grave_info.xp",\
  "fallback": "  §bExperience:",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.xp.description",\
      "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave)."\
    }\
  }\
}

##> XP before death
execute unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
  "translate": "hygrave.grave_info.xp.before_death",\
  "fallback": "    §eBefore death: %s (%s levels §7+ %s points)",\
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
execute if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run tellraw @s {\
  "translate": "hygrave.grave_info.xp.before_death.total_too_big",\
  "fallback": "    §eBefore death: %s levels §7+ %s points",\
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
tellraw @s {\
  "translate": "hygrave.grave_info.xp.after_death",\
  "fallback": "    §eAfter death: %s (%s levels §7+ %s points)",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.xp.description",\
      "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave)."\
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
      "color": "gold",\
      "storage": "hygrave:common"\
    }\
  ]\ 
}

## Despawn time
execute unless data storage hygrave:common graves[-1].status{destroyed:1b} run tellraw @s {\
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
tellraw @s {\
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
function hygrave:internal/grave/show_info/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
execute unless data storage hygrave:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "hygrave.grave_info.status.active",\
  "fallback": "  §bStatus: §aActive"\
}

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"\
} run tellraw @s {\
  "translate": "hygrave.grave_info.status.unpacked_by",\
  "fallback": "  §bStatus: §cOpened by %s",\
  "with": [\
      {\
      "nbt": "graves[-1].data.status.destroyer.name",\
      "color": "red",\
      "storage": "hygrave:common"\
    }\
  ]\
}

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"\
} run tellraw @s {\
  "translate": "hygrave.grave_info.status.remote_unpacked_by",\
  "fallback": "  §bStatus: §cRemotely opened by %s",\
  "with": [\
    {\
      "nbt": "graves[-1].data.status.destroyer.name",\
      "color": "red",\
      "storage": "hygrave:common"\
    }\
  ]\
}

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"\
} run tellraw @s {\
  "translate": "hygrave.grave_info.status.popped_by",\
  "fallback": "  §bStatus: §cBroken by %s",\
  "with": [\
    {\
      "nbt": "graves[-1].data.status.destroyer.name",\
      "color": "red",\
      "storage": "hygrave:common"\
    }\
  ]\
}

execute if data storage hygrave:common graves[-1].data.status{destruction_type:"despawned"\
} run tellraw @s {\
  "translate": "hygrave.grave_info.status.despawned",\
  "fallback": "  §bStatus: §cDespawned"\
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
        "command": "/function hygrave:internal/grave/show_info/show_admin/view_previous {gid: $(gid)}"\
      }\
    },\
    {\
      "translate": "hygrave.grave_info.menu.remote_unpack",\
      "fallback": " §bOpen ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.remote_unpack",\
          "fallback": "Click to remotely open this grave."\
        }\
      },\
      "click_event": {\
        "action": "suggest_command",\
        "command": "/function hygrave:run/grave/admin/remote_open {gid: $(gid)}"\
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
        "command": "/function hygrave:internal/grave/show_info/show_admin/view_next {gid: $(gid)}"\
      }\
    }\
  ]\
}
$execute if data storage hygrave:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "hygrave.grave_info.menu_grayed_remote_unpack",\
  "fallback": "§7[%s§7| Open |%s§7]",\
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
        "command": "/function hygrave:internal/grave/show_info/show_admin/view_previous {gid: $(gid)}"\
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
        "command": "/function hygrave:internal/grave/show_info/show_admin/view_next {gid: $(gid)}"\
      }\
    }\
  ]\
}

##
tellraw @s ""