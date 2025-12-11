#<< config/open_page/graves/text_display_properties

$give @s minecraft:command_block[\
  minecraft:block_entity_data={\
  id: "minecraft:command_block",\
  Command: "execute as @p[nbt={UUID:$(UUID)}] at @s run function hygrave:internal/config/change/graves/text_display/icd_text {value: {translate: \"?\", with: [{nbt: \"temp.text_display.icd.item.count\", storage: \"hygrave:common\", color: \"gold\"}, {nbt: \"temp.text_display.icd.item.slot_name\", storage: \"hygrave:common\", color: \"green\"}]}}"\
  }\
]