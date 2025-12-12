#<< grave/show_info/show_items

tellraw @s {"translate": "hygrave.grave_info.items", "fallback": "  §bItems:"}
$tellraw @s [\
  {"text": "       ", "font": "minecraft:uniform"}, \
\
  $(inventory_0), " ", $(inventory_1), " ", $(inventory_2), " ", $(inventory_3), " ", $(inventory_4), " ", $(inventory_5), " ", $(inventory_6), " ", $(inventory_7), " ", $(inventory_8), "   ", $(armor_head), "\n       ", $(inventory_9), " ", $(inventory_10), " ", $(inventory_11), " ", $(inventory_12), " ", $(inventory_13), " ", $(inventory_14), " ", $(inventory_15), " ", $(inventory_16), " ", $(inventory_17), "   ", $(armor_chest), "\n       " , $(inventory_18), " ", $(inventory_19), " ", $(inventory_20), " ", $(inventory_21), " ", $(inventory_22), " ", $(inventory_23), " ", $(inventory_24), " ", $(inventory_25), " ", $(inventory_26), "   ", $(armor_legs), \
\
  "\n   ", $(offhand), "  ", $(hotbar_0), " ", $(hotbar_1), " ", $(hotbar_2), " ", $(hotbar_3), " ", $(hotbar_4), " ", $(hotbar_5), " ", $(hotbar_6), " ", $(hotbar_7), " ", $(hotbar_8), "   ", $(armor_feet) \
]