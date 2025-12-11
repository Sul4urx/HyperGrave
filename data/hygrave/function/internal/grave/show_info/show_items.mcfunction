#<< grave/show_info/show_admin
#<< grave/show_info/show_non-admin/*

## Bring the nessecary elements of maps to last index so that we can work with them

##> Grave
$function hygrave:internal/map/graves/lookup {gid: $(gid)}

## The text to show for each slot
## This will be outputted as macro later
## Here, we will start with no-items-exist-in-grave approach
data modify storage hygrave:common temp.text_to_show.slots set value {\
  hotbar_0: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_0", "fallback": "§7Slot: §aHotbar 1"}}}', \
  hotbar_1: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_1", "fallback": "§7Slot: §aHotbar 2"}}}', \
  hotbar_2: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_2", "fallback": "§7Slot: §aHotbar 3"}}}', \
  hotbar_3: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_3", "fallback": "§7Slot: §aHotbar 4"}}}', \
  hotbar_4: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_4", "fallback": "§7Slot: §aHotbar 5"}}}', \
  hotbar_5: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_5", "fallback": "§7Slot: §aHotbar 6"}}}', \
  hotbar_6: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_6", "fallback": "§7Slot: §aHotbar 7"}}}', \
  hotbar_7: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_7", "fallback": "§7Slot: §aHotbar 8"}}}', \
  hotbar_8: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.hotbar_8", "fallback": "§7Slot: §aHotbar 9"}}}', \
  \
  inventory_0: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_0", "fallback": "§7Slot: §aInventory 1"}}}', \
  inventory_1: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_1", "fallback": "§7Slot: §aInventory 2"}}}', \
  inventory_2: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_2", "fallback": "§7Slot: §aInventory 3"}}}', \
  inventory_3: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_3", "fallback": "§7Slot: §aInventory 4"}}}', \
  inventory_4: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_4", "fallback": "§7Slot: §aInventory 5"}}}', \
  inventory_5: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_5", "fallback": "§7Slot: §aInventory 6"}}}', \
  inventory_6: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_6", "fallback": "§7Slot: §aInventory 7"}}}', \
  inventory_7: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_7", "fallback": "§7Slot: §aInventory 8"}}}', \
  inventory_8: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_8", "fallback": "§7Slot: §aInventory 9"}}}', \
  inventory_9: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_9", "fallback": "§7Slot: §aInventory 10"}}}', \
  inventory_10: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_10", "fallback": "§7Slot: §aInventory 11"}}}', \
  inventory_11: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_11", "fallback": "§7Slot: §aInventory 12"}}}', \
  inventory_12: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_12", "fallback": "§7Slot: §aInventory 13"}}}', \
  inventory_13: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_13", "fallback": "§7Slot: §aInventory 14"}}}', \
  inventory_14: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_14", "fallback": "§7Slot: §aInventory 15"}}}', \
  inventory_15: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_15", "fallback": "§7Slot: §aInventory 16"}}}', \
  inventory_16: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_16", "fallback": "§7Slot: §aInventory 17"}}}', \
  inventory_17: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_17", "fallback": "§7Slot: §aInventory 18"}}}', \
  inventory_18: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_18", "fallback": "§7Slot: §aInventory 19"}}}', \
  inventory_19: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_19", "fallback": "§7Slot: §aInventory 20"}}}', \
  inventory_20: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_20", "fallback": "§7Slot: §aInventory 21"}}}', \
  inventory_21: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_21", "fallback": "§7Slot: §aInventory 22"}}}', \
  inventory_22: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_22", "fallback": "§7Slot: §aInventory 23"}}}', \
  inventory_23: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_23", "fallback": "§7Slot: §aInventory 24"}}}', \
  inventory_24: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_24", "fallback": "§7Slot: §aInventory 25"}}}', \
  inventory_25: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_25", "fallback": "§7Slot: §aInventory 26"}}}', \
  inventory_26: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.inventory_26", "fallback": "§7Slot: §aInventory 27"}}}', \
  \
  armor_head: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.armor_head", "fallback": "§7Slot: §aArmor - Head"}}}', \
  armor_chest: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.armor_chest", "fallback": "§7Slot: §aArmor - Chest"}}}', \
  armor_legs: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.armor_legs", "fallback": "§7Slot: §aArmor - Legs"}}}', \
  armor_feet: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.armor_feet", "fallback": "§7Slot: §aArmor - Boots"}}}', \
  \
  offhand: '{"text": "§7⬜", "hover_event": {"action": "show_text", "value": {"translate": "hygrave.grave_info.items.slot.offhand", "fallback": "§7Slot: §aOffhand"}}}' \
}

## Summon an item manipulator
## Call it manipulator item
summon minecraft:item ~ ~32767 ~ {Item: {id: "minecraft:clock"}, Tags: ["hygrave.temp.grave_info_item_manipulator"]}

## Define an item for each slot
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 0, slot_id: "hotbar_0", slot_text: "Hotbar 1"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 1, slot_id: "hotbar_1", slot_text: "Hotbar 2"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 2, slot_id: "hotbar_2", slot_text: "Hotbar 3"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 3, slot_id: "hotbar_3", slot_text: "Hotbar 4"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 4, slot_id: "hotbar_4", slot_text: "Hotbar 5"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 5, slot_id: "hotbar_5", slot_text: "Hotbar 6"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 6, slot_id: "hotbar_6", slot_text: "Hotbar 7"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 7, slot_id: "hotbar_7", slot_text: "Hotbar 8"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 8, slot_id: "hotbar_8", slot_text: "Hotbar 9"}

function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 9, slot_id: "inventory_0", slot_text: "Inventory 1"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 10, slot_id: "inventory_1", slot_text: "Inventory 2"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 11, slot_id: "inventory_2", slot_text: "Inventory 3"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 12, slot_id: "inventory_3", slot_text: "Inventory 4"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 13, slot_id: "inventory_4", slot_text: "Inventory 5"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 14, slot_id: "inventory_5", slot_text: "Inventory 6"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 15, slot_id: "inventory_6", slot_text: "Inventory 7"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 16, slot_id: "inventory_7", slot_text: "Inventory 8"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 17, slot_id: "inventory_8", slot_text: "Inventory 9"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 18, slot_id: "inventory_9", slot_text: "Inventory 10"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 19, slot_id: "inventory_10", slot_text: "Inventory 11"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 20, slot_id: "inventory_11", slot_text: "Inventory 12"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 21, slot_id: "inventory_12", slot_text: "Inventory 13"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 22, slot_id: "inventory_13", slot_text: "Inventory 14"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 23, slot_id: "inventory_14", slot_text: "Inventory 15"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 24, slot_id: "inventory_15", slot_text: "Inventory 16"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 25, slot_id: "inventory_16", slot_text: "Inventory 17"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 26, slot_id: "inventory_17", slot_text: "Inventory 18"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 27, slot_id: "inventory_18", slot_text: "Inventory 19"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 28, slot_id: "inventory_19", slot_text: "Inventory 20"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 29, slot_id: "inventory_20", slot_text: "Inventory 21"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 30, slot_id: "inventory_21", slot_text: "Inventory 22"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 31, slot_id: "inventory_22", slot_text: "Inventory 23"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 32, slot_id: "inventory_23", slot_text: "Inventory 24"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 33, slot_id: "inventory_24", slot_text: "Inventory 25"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 34, slot_id: "inventory_25", slot_text: "Inventory 26"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 35, slot_id: "inventory_26", slot_text: "Inventory 27"}

function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 103, slot_id: "armor_head", slot_text: "Armor - Head"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 102, slot_id: "armor_chest", slot_text: "Armor - Chest"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 101, slot_id: "armor_legs", slot_text: "Armor - Legs"}
function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: 100, slot_id: "armor_feet", slot_text: "Armor - Boots"}

function hygrave:internal/grave/show_info/show_items/add_item_value {slot_number: -106, slot_id: "offhand", slot_text: "Offhand"}



## Show result
function hygrave:internal/grave/show_info/show_items/show with storage hygrave:common temp.text_to_show.slots

## Get rid of the temp manipulator item
kill @n[tag=hygrave.temp.grave_info_item_manipulator]



