#@> Executed from:
#@>   function hygrave:internal/backup/show_info/show_items/add_item_value

# Mark the square representing the item and add a tooltip for the item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id) set value {\
  "text": "§e⬛",\
  "click_event": {\
    "action": "suggest_command",\
    "command": "/function hygrave:run/backup/restore_item {bid: $(bid), slot: $(slot_number)}"\
  }\
}

$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event" set from entity @s[tag=hygrave.temp.backup_info_item_manipulator,type=minecraft:item] Item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."action" set value "show_item"

$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value ""
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.backup_info.items.title", \
    "fallback": "§6§lItem info"\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.backup_info.items.id", \
    "fallback": "§7ID: %s", \
    "with": ["§a$(id)"]\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.backup_info.items.count", \
    "fallback": "§7Count: %s", \
    "with": ["§a$(count)"]\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.backup_info.items.slot.$(slot_id)", \
    "fallback": "§7Slot: §a$(slot_text)"\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value ""
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.backup_info.items.click_to_restore", \
    "fallback": "§fClick to restore item."\
  }