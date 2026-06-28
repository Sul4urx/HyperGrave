#@> Executed from:
#@>   function hygrave:internal/grave/force_generate
#@>   function hygrave:internal/grave/generate

## Store data
execute store result entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.day int 1 run function hygrave:internal/helper/time/current/query_day_count
execute store result entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.hours int 1 run function hygrave:internal/helper/time/current/get_hours
execute store result entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.minutes int 1 run function hygrave:internal/helper/time/current/get_minutes

## Stringify
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.string.hours set string entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.hours
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.string.minutes set string entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.minutes
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.string.day set string entity @s item.components.minecraft:custom_data.hygrave:common.creation_time.day

data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:0}.string.hours set value "00"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:1}.string.hours set value "01"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:2}.string.hours set value "02"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:3}.string.hours set value "03"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:4}.string.hours set value "04"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:5}.string.hours set value "05"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:6}.string.hours set value "06"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:7}.string.hours set value "07"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:8}.string.hours set value "08"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{hours:9}.string.hours set value "09"

data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:0}.string.minutes set value "00"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:1}.string.minutes set value "01"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:2}.string.minutes set value "02"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:3}.string.minutes set value "03"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:4}.string.minutes set value "04"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:5}.string.minutes set value "05"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:6}.string.minutes set value "06"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:7}.string.minutes set value "07"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:8}.string.minutes set value "08"
data modify entity @s item.components.minecraft:custom_data.hygrave:common.creation_time{minutes:9}.string.minutes set value "09"