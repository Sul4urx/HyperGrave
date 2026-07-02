#@> Executed by the player

# HID 4007: List of admin commands

## Prevent loop
scoreboard players set @s hygrave.help 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "hygrave.help_menu.admin_commands",\
  "fallback": "§l§bHyper§l§6Grave§r §7admin commands\n§fHere is a list of commands, which can only be run by a player with cheats on:\n§7(Hover over any command to show its description)",\
}

##
tellraw @s ""

## /function hygrave:run/config
tellraw @s {\
  "translate": "hygrave.help_menu.admin_commands.command.config",\
  "fallback": "§7• §6/function hygrave:run/config",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.admin_commands.command_description.config",\
      "fallback": "§fOpens the config (settings) page, which can be used to customize the behavior of HyperGrave."\
    }\
  }\
}

tellraw @s ""

## /function hygrave:run/grave/admin/show_grave_info
tellraw @s {\
  "translate": "hygrave.help_menu.admin_commands.command.admin_show_grave_info",\
  "fallback": "§7• §6/function hygrave:run/grave/admin/show_grave_info {gid: 1006}",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.admin_commands.command_description.admin_show_grave_info",\
      "fallback": "§fShows the info about the grave #1006 (grave with GID of 1006).\n\nThis will show everything, regardless of what is set in the config Graves / Show Info."\
    }\
  }\
}

tellraw @s ""

## /function hygrave:run/backup/show_last_backup_info
tellraw @s {\
  "translate": "hygrave.help_menu.admin_commands.command.show_last_backup_info",\
  "fallback": "§7• §6/function hygrave:run/backup/show_last_backup_info",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.admin_commands.command_description.show_last_backup_info",\
      "fallback": "§fShows the info about the last generated item backup."\
    }\
  }\
}

tellraw @s ""

## /function hygrave:run/uninstall
tellraw @s {\
  "translate": "hygrave.help_menu.admin_commands.command.uninstall",\
  "fallback": "§7• §6/function hygrave:run/uninstall§f and §6/function hygrave:run/reinstall",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.admin_commands.command_description.uninstall",\
      "fallback": "§fUninstalls and reinstalls HyperGrave, respectively. What's so hard about that? Why do you even need a description?!"\
    }\
  }\
}

tellraw @s ""

## Buttons
tellraw @s [\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "text": "§c< Back",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.help_menu.go_back_to_help_menu",\
            "fallback": "Click to go back to the help menu.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/trigger hygrave.help"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""