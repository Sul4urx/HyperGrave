#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s [\
  {\
    "translate": "hygrave.grave_info.title",\
    "fallback": "\nGrave §6#%s info",\
    "with": [\
      {\
        "nbt": "graves[-1].data.gid",\
        "storage": "hygrave:common",\
        "color": "gold",\
        "plain": true\
      }\
    ]\
  }\
]