#@> Executed from:
#@>   function hygrave:internal/grave/icd/display

## Move the first item of the list
## to the end of the list
data modify storage hygrave:common temp.grave_data.items append from storage hygrave:common temp.grave_data.items[0]

data remove storage hygrave:common temp.grave_data.items[0]

## Reset cooldown
scoreboard players set @n[tag=hygrave.temp.grave.icd] hygrave.icd.cooldown 0

## Play sound
execute if score (grave_interaction/icd_properties/silent) hygrave.config matches 0 if data storage hygrave:common temp.grave_data{icd_activated:1b} run playsound minecraft:block.note_block.hat ui @a ~ ~ ~ 1 2