#<! admin/show_backup_info

## Read the input bid and store it
$data modify storage hygrave:common temp.args.bid set value $(bid)

## Check if any backups have been generated yet
execute unless data storage hygrave:common backups[0] run return run title @s actionbar {\
  "translate": "hygrave.backup_info.fail.backup_none_exist",\
  "fallback": "§cNo backups have been generated yet."\
}

## Check if the backup has ever existed before
execute store result score .backup_exists hygrave.temp_var run function hygrave:internal/backup/show_info/check_if_backup_exists with storage hygrave:common temp.args

## If not, tell error to player
execute if score .backup_exists hygrave.temp_var matches 0 run return run title @s actionbar {\
  "translate": "hygrave.backup_info.fail.bid_no_exist",\
  "fallback": "§cBackup #%s§c does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.bid",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}

## Bring the nessecary elements of maps to last index so that we can work with them

##> Backup
function hygrave:internal/map/backups/lookup with storage hygrave:common temp.args

tellraw @s ""

## Title
tellraw @s [\
  {\
    "translate": "hygrave.backup_info.title",\
    "fallback": "Backup §6#%s info", \
    "with": [\
      {\  
        "nbt": "backups[-1].data.bid",\
        "storage": "hygrave:common",\
        "color": "gold"\
      }\
    ]\
  }\
]

## Owner
tellraw @s {\
  "translate": "hygrave.backup_info.owner",\
  "fallback": "  §bOwner: %s", \
  "hoverEvent": {\
    "action": "show_text",\
    "contents": {\
      "translate": "hygrave.backup_info.owner.description",\
      "fallback": "The player that generated this backup."\
    }\
  },\
  "with": [\
    {\
      "nbt": "backups[-1].data.owner.name",\
      "color": "green",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## Relevant grave
execute if data storage hygrave:common backups[-1].data.relevant_grave run tellraw @s {\
  "translate": "hygrave.backup_info.relevant_grave",\
  "fallback": "  §bRelevant grave: §6#%s",\
  "hoverEvent": {\
    "action": "show_text",\
    "contents": {\
      "translate": "hygrave.backup_info.relevant_grave.description",\
      "fallback": "The GID of the grave that the player generated alongside this backup."\
    }\
  },\
  "with": [\
    {\  
      "nbt": "backups[-1].data.relevant_grave.data.gid",\
      "color": "gold",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## Creation time
tellraw @s {\
  "translate": "hygrave.backup_info.creation_time",\
  "fallback": "  §bCreation time: §rDay %s§7, %s hours §7: %s minutes",\
  "hoverEvent": {\
    "action": "show_text",\
    "contents": {\
      "translate": "hygrave.backup_info.creation_time.description",\
      "fallback": "The in-game time the backup was generated at."\
    }\
  },\
  "with": [\
    {\
      "nbt": "backups[-1].data.creation_time.day",\
      "color": "gold",\
      "storage": "hygrave:common"\
    },\
    {\
      "nbt": "backups[-1].data.creation_time.hours",\
      "color": "gold",\
      "storage": "hygrave:common"\
    },\
    {\
      "nbt": "backups[-1].data.creation_time.minutes",\
      "color": "gold",\
      "storage": "hygrave:common"\
    }\
  ]\
}

## Items
function hygrave:internal/backup/show_info/show_items with storage hygrave:common backups[-1].data

##
tellraw @s ""

## Menu
$tellraw @s {\
  "translate": "hygrave.backup_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7]",\
  "with": [\
    {\
      "translate": "hygrave.backup_info.menu.back",\
      "fallback": "§b< ",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "hygrave.backup_info.menu_description.back",\
          "fallback": "Click to view info about previous backup."\
        }\
      },\
      "clickEvent": {\
        "action": "run_command",\
        "value": "/function hygrave:internal/backup/show_info/view_previous {bid: $(bid)}"\
      }\
    },\
    {\
      "translate": "hygrave.backup_info.menu.restore_all_items",\
      "fallback": " §bRestore All Items ",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "hygrave.backup_info.menu_description.restore_all_items",\
          "fallback": "Click to drop all items from this backup.\n\n§bℹ You will need to wait 6 seconds before you can pick them up.\n\n§bℹ In case you accidently ran this command, just leave the items on the ground. They will despawn after just 45 seconds."\
        }\
      },\
      "clickEvent": {\
        "action": "suggest_command",\
        "value": "/function hygrave:run/backup/restore_all_items {bid: $(bid)}"\
      }\
    },\
    {\
      "translate": "hygrave.backup_info.menu.back",\
      "fallback": " §b>",\
      "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
          "translate": "hygrave.backup_info.menu_description.back",\
          "fallback": "Click to view info about next backup."\
        }\
      },\
      "clickEvent": {\
        "action": "run_command",\
        "value": "/function hygrave:internal/backup/show_info/view_next {bid: $(bid)}"\
      }\
    }\
  ]\
}
##
tellraw @s ""