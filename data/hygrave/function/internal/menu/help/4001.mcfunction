#@> Executed by the player

# HID trigger_commands: List of trigger commands

## Prevent loop
scoreboard players set @s hygrave.help 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "hygrave.help_menu.trigger_commands",\
  "fallback": "§l§bHyper§l§6Grave§r §7trigger commands\n§fHere is a list of commands, which can be run by any player:\n§7(Hover over any command to show its description)",\
}

##
tellraw @s ""

## /trigger hygrave.info
tellraw @s {\
  "translate": "hygrave.help_menu.trigger_commands.command.info",\
  "fallback": "§7• §6/trigger hygrave.info",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.trigger_commands.command_description.info",\
      "fallback": "§fShows the description of HyperGrave as well as a few links to HyperGrave's official websites and buttons for common in-game actions."\
    }\
  }\
}

tellraw @s ""

## /trigger hygrave.help
tellraw @s {\
  "translate": "hygrave.help_menu.trigger_commands.command.help",\
  "fallback": "§7• §6/trigger hygrave.help",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.trigger_commands.command_description.help",\
      "fallback": "§fShows the help menu."\
    }\
  }\
}

tellraw @s ""

## /trigger hygrave.show_grave_info
tellraw @s {\
  "translate": "hygrave.help_menu.trigger_commands.command.show_grave_info",\
  "fallback": "§7• §6/trigger hygrave.show_grave_info",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.trigger_commands.command_description.show_grave_info",\
      "fallback": "§fShows the info about the last generated grave."\
    }\
  }\
}

tellraw @s ""

## /trigger hygrave.show_grave_info set ...
tellraw @s {\
  "translate": "hygrave.help_menu.trigger_commands.command.show_grave_info_set",\
  "fallback": "§7• §6/trigger hygrave.show_grave_info set 1006",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.help_menu.trigger_commands.command_description.show_grave_info_set",\
      "fallback": "§fShows the info about the grave #1006 (grave with GID of 1006)."\
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