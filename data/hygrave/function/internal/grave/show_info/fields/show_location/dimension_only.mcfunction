#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
  "translate": "hygrave.grave_info.location.dim", \
  "fallback": "  §bDimension: %s",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
        "translate": "hygrave.grave_info.localtion.dim.description",\
        "fallback": "The dimension the grave was generated in."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "color": "green",\
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}