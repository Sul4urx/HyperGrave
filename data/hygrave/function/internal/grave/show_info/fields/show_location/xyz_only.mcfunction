#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
  "translate": "hygrave.grave_info.location.xyz", \
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.location.xyz.description",\
      "fallback": "The exact X, Y and Z coordinates the grave was generated in (NOT where the player died, that can be different sometimes).\n\nThe admin doesn't allow me to show the dimension as well, for some reason. The admin is kinda a weird guy in my opinion, but I don't really know, maybe there is a good reason why they did this... I mean why would the admin want to show the exact coordinates but not the dimension? what's the point???"\
    }\
  },\
  "fallback": "  §bLocation: %s",\
  "with": [\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "separator": "§7, ",\
      "plain": true\
    },\
  ]\
}