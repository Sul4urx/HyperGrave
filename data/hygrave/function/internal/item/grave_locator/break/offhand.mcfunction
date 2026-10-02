#@> Executed from:
#@>   function hygrave:internal/item/grave_locator/break

## Break locator and stop it from working
item modify entity @s weapon.offhand {\
  function: "minecraft:set_item",\
  item: "minecraft:music_disc_blocks"\
}
item modify entity @s weapon.offhand {\
  function: "minecraft:set_custom_data",\
  tag: {\
    "hygrave:common": {\
      grave_locator: {\
        tracking: false,\
        target_grave: {}\
      }\
    }\
  }\
}
item modify entity @s weapon.offhand {\
  function: "minecraft:set_custom_model_data",\
  strings: {\
    mode: "replace_section",\
    offset: 1,\
    values: ["tracking=false"]\
  }\
}