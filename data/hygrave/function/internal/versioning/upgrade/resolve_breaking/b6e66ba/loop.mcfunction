#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d
#@>   function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d/loop

## For all elements in graves database, fix creation time data
data modify storage hygrave:common graves[-1].data.creation_time.string set value {day: "?", hours: "??", minutes: "??"}

data modify storage hygrave:common graves[-1].data.creation_time.string.day set string storage hygrave:common graves[-1].data.creation_time.day
data modify storage hygrave:common graves[-1].data.creation_time.string.hours set string storage hygrave:common graves[-1].data.creation_time.hours
data modify storage hygrave:common graves[-1].data.creation_time.string.minutes set string storage hygrave:common graves[-1].data.creation_time.minutes

data modify storage hygrave:common graves[-1].data.creation_time{hours:0}.string.hours set value "00"
data modify storage hygrave:common graves[-1].data.creation_time{hours:1}.string.hours set value "01"
data modify storage hygrave:common graves[-1].data.creation_time{hours:2}.string.hours set value "02"
data modify storage hygrave:common graves[-1].data.creation_time{hours:3}.string.hours set value "03"
data modify storage hygrave:common graves[-1].data.creation_time{hours:4}.string.hours set value "04"
data modify storage hygrave:common graves[-1].data.creation_time{hours:5}.string.hours set value "05"
data modify storage hygrave:common graves[-1].data.creation_time{hours:6}.string.hours set value "06"
data modify storage hygrave:common graves[-1].data.creation_time{hours:7}.string.hours set value "07"
data modify storage hygrave:common graves[-1].data.creation_time{hours:8}.string.hours set value "08"
data modify storage hygrave:common graves[-1].data.creation_time{hours:9}.string.hours set value "09"

data modify storage hygrave:common graves[-1].data.creation_time{minutes:0}.string.minutes set value "00"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:1}.string.minutes set value "01"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:2}.string.minutes set value "02"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:3}.string.minutes set value "03"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:4}.string.minutes set value "04"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:5}.string.minutes set value "05"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:6}.string.minutes set value "06"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:7}.string.minutes set value "07"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:8}.string.minutes set value "08"
data modify storage hygrave:common graves[-1].data.creation_time{minutes:9}.string.minutes set value "09"

data modify storage hygrave:common graves[-1].data.creation_time{string: {hours: "??"}} merge value {day: 0, hours: 0, minutes: 0, corrupted: true}


data modify storage hygrave:common graves prepend from storage hygrave:common graves[-1]
data remove storage hygrave:common graves[-1]

scoreboard players remove .loop_count hygrave.temp_var 1

execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/versioning/upgrade/resolve_breaking/b6e66ba/loop