#<< grave/generate

## For players, the offhand and armor slots are
## stored in a compound, not an array

## That also means they don't have a `Slot` tag
## So we have to add them ourselves
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items set value [\
  {Slot: -106b, id: 0},\
  {Slot: 103b, id: 0},\
  {Slot: 102b, id: 0},\
  {Slot: 101b, id: 0},\
  {Slot: 100b, id: 0}\
]

## Copy the item data from the player and paste it to the grave
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:0b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:1b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:2b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:3b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:4b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:5b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:6b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:7b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:8b}]

data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:9b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:10b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:11b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:12b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:13b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:14b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:15b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:16b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:17b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:18b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:19b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:20b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:21b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:22b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:23b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:24b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:25b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:26b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:27b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:28b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:29b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:30b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:31b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:32b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:33b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:34b}]
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:35b}]

##> Careful! the `equipment` data doesn't have a `Slot` field
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].id set from entity @s equipment.offhand.id
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].count set from entity @s equipment.offhand.count
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].components set from entity @s equipment.offhand.components

data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].id set from entity @s equipment.head.id
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].count set from entity @s equipment.head.count
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].components set from entity @s equipment.head.components


data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].id set from entity @s equipment.chest.id
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].count set from entity @s equipment.chest.count
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].components set from entity @s equipment.chest.components

data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].id set from entity @s equipment.legs.id
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].count set from entity @s equipment.legs.count
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].components set from entity @s equipment.legs.components

data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].id set from entity @s equipment.feet.id
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].count set from entity @s equipment.feet.count
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].components set from entity @s equipment.feet.components

##> If no item in the offhand or armor slot exists,
##> Remove the item from the grave
data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{id:0}]