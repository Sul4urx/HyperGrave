#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
  "translate": "hygrave.grave_info.creation_time--2",\
  "fallback": "  §bCreation time: §rDay %s§r (%s§7 : %s§r)",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.creation_time.description",\
      "fallback": "The in-game time the grave was generated at."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].data.creation_time.string.day",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "interpret": true\ 
    },\
    {\
      "nbt": "graves[-1].data.creation_time.string.hours",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "interpret": true\ 
    },\
    {\
      "nbt": "graves[-1].data.creation_time.string.minutes",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "interpret": true\ 
    }\
  ]\
}