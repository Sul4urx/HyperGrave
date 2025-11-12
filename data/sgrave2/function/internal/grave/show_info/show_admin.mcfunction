#<! admin/show_grave_info

## Read the input GID and store it
execute store result storage sgrave2:common temp.args.gid int 1 run scoreboard players get @s sgrave2.show_grave_info

## Check if any graves have been generated yet
execute unless data storage sgrave2:common graves[0] run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Check if the grave has ever existed before
execute store result score .grave_exists sgrave2.temp_var run function sgrave2:internal/grave/show_info/check_if_grave_exists with storage sgrave2:common temp.args
execute if score .grave_exists sgrave2.temp_var matches 0 run return run title @s actionbar {"translate": "sgrave2.grave_info.fail.gid_no_exist", "fallback": "§cGrave #%s§c does not exist.", "with": [{"nbt": "temp.args.gid", "storage": "sgrave2:common", "color": "red"}]}

## If not, tell error to player
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args

## Prevent loop
scoreboard players set @s sgrave2.show_grave_info 0

## Prepare to show despawn time
## by converting from ticks to seconds, minutes and hours
execute store result score .despawn_time sgrave2.temp_var run data get storage sgrave2:common graves[-1].data.despawn_time
scoreboard players operation .despawn_time.seconds sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.seconds sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.minutes sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var /= (60) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var

## Title
tellraw @s [{"translate": "sgrave2.grave_info.title", "fallback": "\nGrave §6#%s info", "with": [{"nbt": "graves[-1].data.gid", "storage": "sgrave2:common", "color": "gold"}]}]

## Owner
tellraw @s {"translate": "sgrave2.grave_info.owner", "fallback": "  §bOwner: %s", "with": [{"nbt": "graves[-1].data.owner.name", "color": "green", "storage": "sgrave2:common"}]}

## Location
tellraw @s {"translate": "sgrave2.grave_info.location", "fallback": "  §bLocation: %s §7(%s§7)", "with": [{"nbt": "graves[-1].data.pos_integer[]", "color": "gold", "storage": "sgrave2:common", "separator": "§7, "}, {"nbt": "graves[-1].data.dimension.name", "color": "green", "storage": "sgrave2:common"}]}

## XP
tellraw @s {"translate": "sgrave2.grave_info.xp", "fallback": "  §bExperience:"}

##> XP before death
tellraw @s {"translate": "sgrave2.grave_info.xp.before_death", "fallback": "    §eBefore death: %s (%s levels §7+ %s points)", "with": [{"nbt": "graves[-1].contents.xp.before_death.total", "color": "gold", "storage": "sgrave2:common"},{"nbt": "graves[-1].contents.xp.before_death.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp.before_death.points", "color": "gold", "storage": "sgrave2:common"}]}

##> XP after death
tellraw @s {"translate": "sgrave2.grave_info.xp.after_death", "fallback": "    §eAfter death: %s (%s levels §7+ %s points)", "with": [{"nbt": "graves[-1].contents.xp.after_death.total", "color": "gold", "storage": "sgrave2:common"},{"nbt": "graves[-1].contents.xp.after_death.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp.after_death.points", "color": "gold", "storage": "sgrave2:common"}]}

## Despawn time
execute unless data storage sgrave2:common graves[-1].status{destroyed:1b} run tellraw @s {"translate": "sgrave2.grave_info.despawn_time", "fallback": "  §bDespawn time: %s hours§7, %s minutes§7, %s seconds", "with": [{"score": {"name": ".despawn_time.hours", "objective": "sgrave2.temp_var"}, "color": "gold"}, {"score": {"name": ".despawn_time.minutes", "objective": "sgrave2.temp_var"}, "color": "gold"}, {"score": {"name": ".despawn_time.seconds", "objective": "sgrave2.temp_var"}, "color": "gold"}]}

## Creation time
tellraw @s {"translate": "sgrave2.grave_info.creation_time", "fallback": "  §bCreation time: §rDay %s§7, %s hours §7: %s minutes", "with": [{"nbt": "graves[-1].data.creation_time.day", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].data.creation_time.hours", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].data.creation_time.minutes", "color": "gold", "storage": "sgrave2:common"}]}

## Items
function sgrave2:internal/grave/show_info/show_items with storage sgrave2:common graves[-1].data

##
tellraw @s ""

## Status
execute unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} run tellraw @s {"translate": "sgrave2.grave_info.status.active", "fallback": "  §bStatus: §aActive"}

execute if data storage sgrave2:common graves[-1].data.status{destruction_type:"opened"} run tellraw @s {"translate": "sgrave2.grave_info.status.opened_by", "fallback": "  §bStatus: §cOpened by %s", "with": [{"nbt": "graves[-1].data.status.destroyer.name", "color": "red", "storage": "sgrave2:common"}]}

execute if data storage sgrave2:common graves[-1].data.status{destruction_type:"ropened"} run tellraw @s {"translate": "sgrave2.grave_info.status.opened_by", "fallback": "  §bStatus: §cRemotely opened by %s", "with": [{"nbt": "graves[-1].data.status.destroyer.name", "color": "red", "storage": "sgrave2:common"}]}

execute if data storage sgrave2:common graves[-1].data.status{destruction_type:"broken"} run tellraw @s {"translate": "sgrave2.grave_info.status.broken_by", "fallback": "  §bStatus: §cBroken by %s", "with": [{"nbt": "graves[-1].data.status.destroyer.name", "color": "red", "storage": "sgrave2:common"}]}

execute if data storage sgrave2:common graves[-1].data.status{destruction_type:"despawned"} run tellraw @s {"translate": "sgrave2.grave_info.status.despawned", "fallback": "  §bStatus: §cDespawned"}

##
tellraw @s ""

## Menu
$execute unless data storage sgrave2:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "sgrave2.grave_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7]",\
  "with": [\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/grave/show_info/show_admin/view_previous {gid: $(gid)}"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.open",\
      "fallback": " §bOpen ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.open",\
          "fallback": "Click to remotely open this grave."\
        }\
      },\
      "click_event": {\
        "action": "suggest_command",\
        "command": "/function sgrave2:run/grave/admin/remote_open {gid: $(gid)}"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/grave/show_info/show_admin/view_next {gid: $(gid)}"\
      }\
    }\
  ]\
}
$execute if data storage sgrave2:common graves[-1].data.status{destroyed:1b} run tellraw @s {\
  "translate": "sgrave2.grave_info.menu_grayed_open",\
  "fallback": "§7[%s§7| Open |%s§7]",\
  "with": [\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/grave/show_info/show_admin/view_previous {gid: $(gid)}"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/grave/show_info/show_admin/view_next {gid: $(gid)}"\
      }\
    }\
  ]\
}

##
tellraw @s ""