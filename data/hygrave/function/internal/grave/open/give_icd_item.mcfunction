#<< grave/open

## Player's main hand must be empty 
## when taking item from grave with ICD activated
execute if items entity @s weapon.mainhand * run return -1

## Give the current displaying item
item replace entity @s weapon.mainhand from entity @n[tag=hygrave.temp.grave.icd] contents

## Remove item from grave
data remove entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0]

## Immediately switch to next item
scoreboard players set @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 0

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1