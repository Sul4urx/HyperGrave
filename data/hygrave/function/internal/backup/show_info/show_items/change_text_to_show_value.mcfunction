#<< backup/show_info/show_items/add_item_value

# Mark the square representing the item and add a tooltip for the item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id) set value {\
  "text": "§e⬛", \
  "hover_event": {\
    "action": "show_item", \
    "id": "$(id)", \
    "count": $(count), \
    "components": {\
      "minecraft:lore": [\
        {\
          "translate": "hygrave.backup_info.items.count", \
          "fallback": "§7Count: %s", \
          "with": [\
            "§a$(count)" \
          ]\
        }, {\
          "translate": "hygrave.backup_info.items.slot.$(slot_id)", \
          "fallback": "§7Slot: §a$(slot_text)"\
        },"", {\
          "translate": "hygrave.backup_info.items.click_to_restore", \
          "fallback": "§fClick to restore item."\
        }\
      ]\
    }\
  },\
  "click_event": {\
    "action": "suggest_command",\
    "command": "/function hygrave:run/backup/restore_item {bid: $(bid), slot: $(slot_number)}"\
  }\
}