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

item modify entity @s weapon.offhand {\
  function: "minecraft:set_custom_model_data",\
  strings: {\
    mode: "replace_section",\
    offset: 1,\
    values: ["tracking=true"]\
  }\
}

