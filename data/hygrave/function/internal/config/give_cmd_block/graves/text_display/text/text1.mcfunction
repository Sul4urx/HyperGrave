#<< config/open_page/graves/text_display_properties

$give @s minecraft:command_block[\
  minecraft:block_entity_data={\
  id: "minecraft:command_block",\
  Command: "execute as @p[nbt={UUID:$(UUID)}] at @s run function hygrave:internal/config/change/graves/text_display/text/text1 {value: {translate: \"?\", with: [{nbt: \"temp.text_display.gid\", storage: \"hygrave:common\", color: \"gold\"}, {nbt: \"temp.text_display.owner.name\", storage: \"hygrave:common\", color: \"green\"}]}}"\
  }\
]