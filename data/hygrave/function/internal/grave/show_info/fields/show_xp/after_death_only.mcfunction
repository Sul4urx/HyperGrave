#@> Executed from:
#@>   function hygrave:internal/grave/show_info/show_non-admin/an
#@>   function hygrave:internal/grave/show_info/show_non-admin/ao
#@>   function hygrave:internal/grave/show_info/show_non-admin/bn
#@>   function hygrave:internal/grave/show_info/show_non-admin/bo

tellraw @s {\
  "translate": "hygrave.grave_info.xp.after_death_only",\
  "fallback": "  §bXP (After death): %s (%s levels §7+ %s points)",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_info.xp.after_death_only.description",\
      "fallback": "The amount of XP. Not all of the player's XP goes into the grave, so it gets divided into two subfields: Before death (The amount of XP the player had before generating the grave) and After death (The amount of XP stored in the grave).\nYou're not allowed to see the Before death XP of this grave."\
    }\
  },\
  "with": [\
    {\
      "nbt": "graves[-1].contents.xp.after_death.total",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "plain": true\
    },\
    {\
      "nbt": "graves[-1].contents.xp.after_death.levels",\
      "color": "gold",\
      "storage": "hygrave:common",\
      "plain": true\
    },\
    {\
      "nbt": "graves[-1].contents.xp.after_death.points",\
      "color": "gold", \
      "storage": "hygrave:common",\
      "plain": true\
    }\
  ]\
}