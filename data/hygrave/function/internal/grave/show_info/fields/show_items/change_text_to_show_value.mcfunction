#@> Executed from:
#@>   function hygrave:internal/grave/show_info/fields/show_items/add_item_value

# Mark the square representing the item and add a tooltip for the item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id) set value {"text": "§e⬛"}

$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event" set from entity @s[tag=hygrave.temp.grave_info_item_manipulator,type=minecraft:item] Item
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."action" set value "show_item"

$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value ""
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.grave_info.items.title", \
    "fallback": "§6§lItem info"\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.grave_info.items.id", \
    "fallback": "§7ID: %s", \
    "with": ["§a$(id)"]\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.grave_info.items.count", \
    "fallback": "§7Count: %s", \
    "with": ["§a$(count)"]\
  }
$data modify storage hygrave:common temp.text_to_show.slots.$(slot_id)."hover_event"."components"."minecraft:lore" append value {\
    "translate": "hygrave.grave_info.items.slot.$(slot_id)", \
    "fallback": "§7Slot: §a$(slot_text)"\
  }