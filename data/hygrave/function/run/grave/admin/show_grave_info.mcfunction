## Show grave info as admin (all grave info will be shown regardless of configs)
$scoreboard players set @s hygrave.show_grave_info $(gid)

$function hygrave:internal/grave/show_info/show_admin {gid: $(gid)}

## Prevent loop
scoreboard players set @s hygrave.show_grave_info 0