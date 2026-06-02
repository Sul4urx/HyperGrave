#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_admin
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao

tellraw @s {\
  "translate": "hygrave.grave_info.despawn_time",\
  "fallback": "  §bDespawn time: %s hours§7, %s minutes§7, %s seconds",\
  "with": [\
    {\
      "score": {\
        "name": ".despawn_time.hours",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    }, \
    {\
      "score": {\
        "name": ".despawn_time.minutes",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    },\
    {\
      "score": {\
        "name": ".despawn_time.seconds",\
        "objective": "hygrave.temp_var"\
      },\
      "color": "gold"\
    }\
  ]\
}