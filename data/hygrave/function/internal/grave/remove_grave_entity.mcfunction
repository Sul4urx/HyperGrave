#@> Executed from:
#@>   function hygrave:internal/grave/pop
#@>   function hygrave:internal/grave/main
#@>   function hygrave:internal/grave/unpack
#@>   function hygrave:internal/grave/despawn_time/delete_grave

## Drop items
execute if data storage hygrave:common graves[-1].drop_queued_contents.items[0] run function hygrave:internal/grave/despawn_time/delete_grave/drop_items

## Drop XP
execute if data storage hygrave:common graves[-1].drop_queued_contents.xp run function hygrave:internal/grave/despawn_time/delete_grave/drop_xp

## Remove unnessecary data
data remove storage hygrave:common graves[-1].drop_queued_contents

## Get rid of grave parts
execute on passengers run kill @s[tag=hygrave.grave.interaction]
execute on passengers run kill @s[tag=hygrave.grave.player_head]
execute on passengers run kill @s[tag=hygrave.grave.text_display]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_1]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_2]
execute on passengers run kill @s[tag=hygrave.grave.icd]
kill @s[tag=hygrave.grave.base]