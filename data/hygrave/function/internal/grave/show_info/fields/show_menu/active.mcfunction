#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao

$tellraw @s {\
  "translate": "hygrave.grave_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7|%s§7]",\
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
      "translate": "hygrave.grave_info.menu.search",\
      "fallback": " §b\U0001f50d Search ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "hygrave.grave_info.menu_description.search",\
          "fallback": "Click to show a list of GIDs of all graves."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger hygrave.show_grave_list"\
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