#<< grave/pop
#<< grave/main
#<< grave/unpack
#<< grave/despawn_time/delete_grave

execute on passengers run kill @s[tag=hygrave.grave.interaction]
execute on passengers run kill @s[tag=hygrave.grave.player_head]
execute on passengers run kill @s[tag=hygrave.grave.text_display]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_1]
execute on passengers run kill @s[tag=hygrave.grave.model.decoration_2]
execute on passengers run kill @s[tag=hygrave.grave.icd]
kill @s[tag=hygrave.grave.base]