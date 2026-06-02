#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
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
      "separator": "§7, ",\
      "plain": true\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "color": "green",\
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}