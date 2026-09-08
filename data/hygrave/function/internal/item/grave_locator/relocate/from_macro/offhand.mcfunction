item modify entity @s weapon.offhand {\
  function: "minecraft:set_item",\
  item: "minecraft:music_disc_far"\
}

$item modify entity @s weapon.offhand {\
  function: "minecraft:set_custom_data",\
  tag: {\
    "hygrave:common": {\
      grave_locator: {\
        tracking: true,\
        target_grave: {\
          data: {\
            gid: $(gid)\
          }\
        }\
      }\
    }\
  }\
}

