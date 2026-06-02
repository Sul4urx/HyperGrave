#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
  "translate": "hygrave.grave_info.status.popped_by",\
  "fallback": "  §bStatus: §cLooted by %s",\
  "with": [\
      {\
      "nbt": "graves[-1].data.status.destroyer.name",\
      "color": "red",\
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}