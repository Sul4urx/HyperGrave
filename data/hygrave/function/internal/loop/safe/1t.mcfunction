#@> Executed from:
#@>   function hygrave:internal/loop/safe/1t
#@>   function hygrave:internal/versioning/unsupported/*

# This function is used instead of hygrave:internal/loop/1t
# It runs HyperGrave on safe mode
# In safe mode, only HyperGrave commands work

## Schedule function to run again
schedule function hygrave:internal/loop/safe/1t 1t

## Show HyperGrave info
execute as @a at @s unless score @s hygrave.info matches 0 run function hygrave:run/info
scoreboard players set @a hygrave.info 0
scoreboard players enable @a hygrave.info

## Show HyperGrave help pages
## (numbers like 4001 and 4007 are called HIDs (Help page ID))
execute as @a[scores={hygrave.help=4001}] at @s run function hygrave:internal/menu/help/4001
execute as @a[scores={hygrave.help=4007}] at @s run function hygrave:internal/menu/help/4007

## Show HyperGrave help menu
execute as @a at @s if score @s hygrave.help matches 1.. run function hygrave:run/help
scoreboard players set @a hygrave.help 0
scoreboard players enable @a hygrave.help

## Respond to score triggers

##> Show grave info
execute as @a at @s if score @s hygrave.show_grave_info matches 1.. run function hygrave:internal/grave/show_info/check_conditions
execute as @a at @s if score @s hygrave.show_grave_info matches ..-1 run function hygrave:internal/grave/show_info/check_conditions
scoreboard players set @a hygrave.show_grave_info 0
scoreboard players enable @a hygrave.show_grave_info

##> Show grave info
execute as @a at @s if score @s hygrave.show_grave_list matches 1.. run function hygrave:internal/grave/show_list
scoreboard players set @a hygrave.show_grave_list 0
scoreboard players enable @a hygrave.show_grave_list

##>> View next
execute as @a[scores={hygrave.show_grave_info.view_next=1000..}] at @s run function hygrave:internal/grave/show_info/show_non-admin/view_next
scoreboard players set @a hygrave.show_grave_info.view_next 0
scoreboard players enable @a hygrave.show_grave_info.view_next

##>> View previous
execute as @a[scores={hygrave.show_grave_info.view_previous=1000..}] at @s run function hygrave:internal/grave/show_info/show_non-admin/view_previous
scoreboard players set @a hygrave.show_grave_info.view_previous 0
scoreboard players enable @a hygrave.show_grave_info.view_previous

##> Locate Grave
execute as @a[scores={hygrave.locate=1000..}] at @s run function hygrave:internal/item/grave_locator/relocate/from_trigger
execute as @a[scores={hygrave.locate=1..128}] at @s run function hygrave:internal/item/grave_locator/show_grave_list
scoreboard players set @a hygrave.locate 0
scoreboard players enable @a hygrave.locate