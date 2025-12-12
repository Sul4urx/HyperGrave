#<< grave/show_info/show_items/add_item_value

# Mark the square representing the item and add a tooltip for the item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id) set value '{\
  "text": "§e⬛", \
  "hoverEvent": {\
    "action": "show_item", \
    "contents": {\
      "id": "$(id)", \
      "count": $(count), \
      "components": {\
        "minecraft:lore": [\
          "{\
            \\"translate\\": \\"hygrave.grave_info.items.count\\", \
            \\"fallback\\": \\"§7Count: %s\\", \
            \\"with\\": [\
              \\"§a$(count)\\" \
            ]\
          }", "{\
            \\"translate\\": \\"hygrave.grave_info.items.slot.$(slot_id)\\", \
            \\"fallback\\": \\"§7Slot: §a$(slot_text)\\"\
          }"\
        ]\
      }\
    }\
  }\
}'