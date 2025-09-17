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

## Check for each slot if it is blacklisted in configs
## and if not, copy the item data from the player
## and paste it to the grave
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h1'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:0b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h2'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:1b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h3'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:2b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h4'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:3b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h5'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:4b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h6'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:5b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h7'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:6b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h8'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:7b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'h9'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:8b}]

execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it1'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:9b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it2'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:10b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it3'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:11b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it4'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:12b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it5'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:13b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it6'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:14b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it7'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:15b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it8'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:16b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'it9'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:17b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im1'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:18b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im2'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:19b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im3'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:20b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im4'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:21b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im5'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:22b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im6'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:23b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im7'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:24b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im8'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:25b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'im9'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:26b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib1'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:27b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib2'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:28b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib3'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:29b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib4'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:30b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib5'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:31b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib6'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:32b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib7'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:33b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib8'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:34b}]
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'ib9'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Inventory[{Slot:35b}]

##> Careful! the `equipment` data doesn't have a `Slot` field
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'offhand'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].id set from entity @s equipment.offhand.id
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'offhand'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].count set from entity @s equipment.offhand.count
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'offhand'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:-106b}].components set from entity @s equipment.offhand.components

execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'head'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].id set from entity @s equipment.head.id
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'head'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].count set from entity @s equipment.head.count
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'head'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:103b}].components set from entity @s equipment.head.components


execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'chest'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].id set from entity @s equipment.chest.id
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'chest'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].count set from entity @s equipment.chest.count
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'chest'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:102b}].components set from entity @s equipment.chest.components

execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'legs'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].id set from entity @s equipment.legs.id
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'legs'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].count set from entity @s equipment.legs.count
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'legs'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:101b}].components set from entity @s equipment.legs.components

execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'feet'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].id set from entity @s equipment.feet.id
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'feet'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].count set from entity @s equipment.feet.count
execute unless data storage sgrave2:common configs.value.players.blacklist_slots[{slot:'feet'}] run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{Slot:100b}].components set from entity @s equipment.feet.components

##> If no item in the offhand or armor slot exists,
##> Remove the item from the grave
data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[{id:0}]