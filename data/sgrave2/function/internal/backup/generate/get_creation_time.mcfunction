#<< grave/generate

## Tick
execute store result score .creation_time.tick sgrave2.temp_var run time query daytime

## Day count
execute store result score .creation_time.day sgrave2.temp_var run time query day

## Minutes
scoreboard players operation .creation_time.minutes sgrave2.temp_var = .creation_time.tick sgrave2.temp_var
scoreboard players operation .creation_time.minutes sgrave2.temp_var %= (1000) sgrave2.var
scoreboard players operation .creation_time.minutes sgrave2.temp_var *= (6) sgrave2.var
scoreboard players operation .creation_time.minutes sgrave2.temp_var /= (100) sgrave2.var

## Hours
scoreboard players operation .creation_time.hours sgrave2.temp_var = .creation_time.tick sgrave2.temp_var
scoreboard players operation .creation_time.hours sgrave2.temp_var /= (1000) sgrave2.var
scoreboard players add .creation_time.hours sgrave2.temp_var 6
execute if score .creation_time.hours sgrave2.temp_var matches 24.. run scoreboard players remove .despawn_time.hours sgrave2.temp_var 24

## Store data
execute store result storage sgrave2:common backups[-1].data.creation_time.day int 1 run scoreboard players get .creation_time.day sgrave2.temp_var
execute store result storage sgrave2:common backups[-1].data.creation_time.hours int 1 run scoreboard players get .creation_time.hours sgrave2.temp_var
execute store result storage sgrave2:common backups[-1].data.creation_time.minutes int 1 run scoreboard players get .creation_time.minutes sgrave2.temp_var

## Add leading zeros
data modify storage sgrave2:common backups[-1].data.creation_time{hours:0}.hours set value "00"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:1}.hours set value "01"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:2}.hours set value "02"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:3}.hours set value "03"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:4}.hours set value "04"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:5}.hours set value "05"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:6}.hours set value "06"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:7}.hours set value "07"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:8}.hours set value "08"
data modify storage sgrave2:common backups[-1].data.creation_time{hours:9}.hours set value "09"

data modify storage sgrave2:common backups[-1].data.creation_time{minutes:0}.minutes set value "00"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:1}.minutes set value "01"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:2}.minutes set value "02"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:3}.minutes set value "03"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:4}.minutes set value "04"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:5}.minutes set value "05"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:6}.minutes set value "06"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:7}.minutes set value "07"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:8}.minutes set value "08"
data modify storage sgrave2:common backups[-1].data.creation_time{minutes:9}.minutes set value "09"