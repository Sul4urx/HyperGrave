give @s minecraft:music_disc_blocks[\
  !minecraft:jukebox_playable,\
  minecraft:enchantment_glint_override=true,\
  minecraft:custom_model_data={\
    strings: ["hygrave.item.grave_locator", "tracking=false"]\
  },\
  minecraft:consumable={\
    consume_seconds: 8916100448256f,\
    animation: "none",\
    has_consume_particles: false,\
    sound: {sound_id:""}\
  },\
  minecraft:custom_data={\
    "hygrave:common": {\
      grave_locator: {\
        tracking: false,\
        target_grave: {}\
      }\
    }\
  }\
]