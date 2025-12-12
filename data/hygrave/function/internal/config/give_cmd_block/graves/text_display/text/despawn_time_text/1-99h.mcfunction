#<< config/open_page/graves/text_display_properties

$give @s minecraft:command_block[\
  minecraft:block_entity_data={\
  id: "minecraft:command_block",\
  Command: "execute as @p[nbt={UUID:$(UUID)}] at @s run function hygrave:internal/config/change/graves/text_display/text/despawn_time_text/1-99h {value: {translate: \"?\", with: [{nbt: \"temp.text_display.despawn_time.seconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fseconds\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.minutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.fminutes\", storage: \"hygrave:common\", color: \"red\"}, {nbt: \"temp.text_display.despawn_time.hours\", storage: \"hygrave:common\", color: \"red\"}]}}"\
  }\
]