#<! admin/show_backup_info

## Read the input bid and store it
$data modify storage sgrave2:common temp.args.bid set value $(bid)

## Check if any backups have been generated yet
execute unless data storage sgrave2:common backups[0] run return run title @s actionbar {\
  "translate": "sgrave2.backup_info.fail.backup_none_exist",\
  "fallback": "§cNo backups have been generated yet."\
}

## Check if the backup has ever existed before
execute store result score .backup_exists sgrave2.temp_var run function sgrave2:internal/backup/show_info/check_if_backup_exists with storage sgrave2:common temp.args

## If not, tell error to player
execute if score .backup_exists sgrave2.temp_var matches 0 run return run title @s actionbar {\
  "translate": "sgrave2.backup_info.fail.bid_no_exist",\
  "fallback": "§cBackup #%s§c does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.bid",\
      "storage": "sgrave2:common",\
      "color": "red"\
    }\
  ]\
}

## Bring the nessecary elements of maps to last index so that we can work with them

##> Backup
function sgrave2:internal/map/backups/lookup with storage sgrave2:common temp.args

tellraw @s ""

## Title
tellraw @s [\
  {\
    "translate": "sgrave2.backup_info.title",\
    "fallback": "Backup §6#%s info", \
    "with": [\
      {\  
        "nbt": "backups[-1].data.bid",\
        "storage": "sgrave2:common",\
        "color": "gold"\
      }\
    ]\
  }\
]

## Owner
tellraw @s {\
  "translate": "sgrave2.backup_info.owner",\
  "fallback": "  §bOwner: %s", \
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "sgrave2.backup_info.owner.description",\
      "fallback": "The player that generated this backup."\
    }\
  },\
  "with": [\
    {\
      "nbt": "backups[-1].data.owner.name",\
      "color": "green",\
      "storage": "sgrave2:common"\
    }\
  ]\
}

## Relevant grave
execute if data storage sgrave2:common backups[-1].data.relevant_grave run tellraw @s {\
  "translate": "sgrave2.backup_info.relevant_grave",\
  "fallback": "  §bRelevant grave: §6#%s",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "sgrave2.backup_info.relevant_grave.description",\
      "fallback": "The GID of the grave that the player generated alongside this backup."\
    }\
  },\
  "with": [\
    {\  
      "nbt": "backups[-1].data.relevant_grave.data.gid",\
      "color": "gold",\
      "storage": "sgrave2:common"\
    }\
  ]\
}

## Creation time
tellraw @s {\
  "translate": "sgrave2.backup_info.creation_time",\
  "fallback": "  §bCreation time: §rDay %s§7, %s hours §7: %s minutes",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "sgrave2.backup_info.creation_time.description",\
      "fallback": "The in-game time the backup was generated at."\
    }\
  },\
  "with": [\
    {\
      "nbt": "backups[-1].data.creation_time.day",\
      "color": "gold",\
      "storage": "sgrave2:common"\
    },\
    {\
      "nbt": "backups[-1].data.creation_time.hours",\
      "color": "gold",\
      "storage": "sgrave2:common"\
    },\
    {\
      "nbt": "backups[-1].data.creation_time.minutes",\
      "color": "gold",\
      "storage": "sgrave2:common"\
    }\
  ]\
}

## Items
function sgrave2:internal/backup/show_info/show_items with storage sgrave2:common backups[-1].data

##
tellraw @s ""

## Menu
$tellraw @s {\
  "translate": "sgrave2.backup_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7]",\
  "with": [\
    {\
      "translate": "sgrave2.backup_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.backup_info.menu_description.back",\
          "fallback": "Click to view info about previous backup."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/backup/show_info/view_previous {bid: $(bid)}"\
      }\
    },\
    {\
      "translate": "sgrave2.backup_info.menu.restore_all_items",\
      "fallback": " §bRestore All Items ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.backup_info.menu_description.restore_all_items",\
          "fallback": "Click to drop all items from this backup.\n\n§bℹ You will need to wait 6 seconds before you can pick them up.\n\n§bℹ In case you accidently ran this command, just leave the items on the ground. They will despawn after just 45 seconds."\
        }\
      },\
      "click_event": {\
        "action": "suggest_command",\
        "command": "/function sgrave2:run/backup/restore_all_items {bid: $(bid)}"\
      }\
    },\
    {\
      "translate": "sgrave2.backup_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.backup_info.menu_description.back",\
          "fallback": "Click to view info about next backup."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/function sgrave2:internal/backup/show_info/view_next {bid: $(bid)}"\
      }\
    }\
  ]\
}
##
tellraw @s ""