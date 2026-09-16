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