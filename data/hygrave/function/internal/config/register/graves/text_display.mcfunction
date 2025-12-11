#<< config/register

# Register sub-configs for Text Display Properties config

## Text

##> Text 1
execute unless data storage hygrave:common configs.value.graves.text_display.text.text1{} run data modify storage hygrave:common configs.value.graves.text_display.text.text1 set value {translate: "%2$s §6#%1$s\n", with: [{nbt: "temp.text_display.gid", storage: "hygrave:common", color: "gold"}, {nbt: "temp.text_display.owner.name", storage: "hygrave:common", color: "green"}]}

##> Despawn Time Text

##>> 0-59 Seconds
execute unless data storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.0-59_seconds{} run data modify storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.0-59_seconds set value {translate: "%s§cs", with: [{nbt: "temp.text_display.despawn_time.seconds", storage: "hygrave:common", color: "red"}]}

##>> 1-59 Minutes
execute unless data storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-59_minutes{} run data modify storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-59_minutes set value {translate: "%3$s§cmin : %1$s§cs", with: [{nbt: "temp.text_display.despawn_time.seconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.fseconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.minutes", storage: "hygrave:common", color: "red"}]}

##>> 1-99 Hours
execute unless data storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-99_hours{} run data modify storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.1-99_hours set value {translate: "%5$s§chr : %3$s§cmin", with: [{nbt: "temp.text_display.despawn_time.seconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.fseconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.minutes", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.fminutes", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.hours", storage: "hygrave:common", color: "red"}]}

##>> 99+ Hours
execute unless data storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.99+_hours{} run data modify storage hygrave:common configs.value.graves.text_display.text.despawn_time_text.99+_hours set value {translate: "§c99+ hours", with: [{nbt: "temp.text_display.despawn_time.seconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.fseconds", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.minutes", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.fminutes", storage: "hygrave:common", color: "red"}, {nbt: "temp.text_display.despawn_time.hours", storage: "hygrave:common", color: "red"}]}

##> Text 2
execute unless data storage hygrave:common configs.value.graves.text_display.text.text2{} run data modify storage hygrave:common configs.value.graves.text_display.text.text2 set value {translate: "", with: [{nbt: "temp.text_display.gid", storage: "hygrave:common", color: "gold"}, {nbt: "temp.text_display.owner.name", storage: "hygrave:common", color: "green"}]}

## ICD Text
execute unless data storage hygrave:common configs.value.graves.text_display.icd_text{} run data modify storage hygrave:common configs.value.graves.text_display.icd_text set value {translate: "%1$s %2$s", with: [{nbt: "temp.text_display.icd.item.count", storage: "hygrave:common", color: "gold"}, {nbt: "temp.text_display.icd.item.slot_name", storage: "hygrave:common", color: "green"}]}