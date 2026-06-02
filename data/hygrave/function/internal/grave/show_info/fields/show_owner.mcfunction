#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

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
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}