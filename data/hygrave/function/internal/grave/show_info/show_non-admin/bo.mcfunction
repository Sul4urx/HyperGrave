#@> Executed from:
#@>   function hygrave:internal/grave/show_info/check_conditions

# Show grave info for destroyed graves belonging to the player

## Title
function hygrave:internal/grave/show_info/fields/show_title

## Owner
execute unless score (graves/show_grave_info/bo/owner) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_owner

## Location
execute unless score (graves/show_grave_info/bo/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/bo/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/all

execute unless score (graves/show_grave_info/bo/location.xyz) hygrave.config matches 0 if score (graves/show_grave_info/bo/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/xyz_only

execute if score (graves/show_grave_info/bo/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/bo/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/dimension_only

## XP
execute unless score (graves/show_grave_info/bo/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bo/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both

##> If before death total is too big, get rid of it
execute unless score (graves/show_grave_info/bo/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bo/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both/total_too_big

##> XP before death
execute if score (graves/show_grave_info/bo/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bo/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/before_death_only

##>> If total is too big, get rid of it
execute if score (graves/show_grave_info/bo/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/bo/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/before_death_only/total_too_big

##> XP after death
execute unless score (graves/show_grave_info/bo/xp/after_death) hygrave.config matches 0 if score (graves/show_grave_info/bo/xp/before_death) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_xp/after_death_only

## Creation time
execute unless score (graves/show_grave_info/bo/creation_time) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_creation_time

## Items
execute unless score (graves/show_grave_info/bo/items) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"} unless score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/unpacked_by

execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"unpacked"} if score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/unpacked

execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"} unless score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/remote_unpacked_by

execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"remote_unpacked"} if score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/remote_unpacked

execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"} unless score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/popped_by

execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"popped"} if score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/popped


execute unless score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status{destruction_type:"despawned"} run function hygrave:internal/grave/show_info/fields/show_status/despawned


execute if score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if data storage hygrave:common graves[-1].data.status.destroyer unless score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/looted_by

execute if score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 unless score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 unless data storage hygrave:common graves[-1].data.status.destroyer run function hygrave:internal/grave/show_info/fields/show_status/looted

execute if score (graves/show_grave_info/bo/destruction_type) hygrave.config matches 0 if score (graves/show_grave_info/bo/destroyer) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_status/destroyed


##
tellraw @s ""

## Menu
$function hygrave:internal/grave/show_info/fields/show_menu/broken {gid: $(gid)}

##
tellraw @s ""