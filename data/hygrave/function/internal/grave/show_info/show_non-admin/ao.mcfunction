#@> Executed from:
#@>   function hygrave:internal/grave/show_info/check_conditions

# Show grave info for active graves belonging to the player

## Prepare to show despawn time
## by converting from ticks to seconds, minutes and hours
execute store result score .despawn_time hygrave.temp_var run data get storage hygrave:common graves[-1].data.despawn_time
scoreboard players operation .despawn_time.seconds hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.seconds hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.minutes hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.minutes hygrave.temp_var /= (60) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var
scoreboard players operation .despawn_time.minutes hygrave.temp_var %= (60) hygrave.var

scoreboard players operation .despawn_time.hours hygrave.temp_var = .despawn_time hygrave.temp_var
scoreboard players operation .despawn_time.hours hygrave.temp_var /= (3600) hygrave.var

## Title
function hygrave:internal/grave/show_info/fields/show_title

## Owner
execute unless score (graves/show_grave_info/ao/owner) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_owner

## Location
execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/all

execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 if score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/xyz_only

execute if score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 0 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_location/dimension_only

## XP
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both

##> If before death total is too big, get rid of it
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/both/total_too_big

##> XP before death
execute if score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 unless data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/before_death_only

##>> If total is too big, get rid of it
execute if score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 unless score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 if data storage hygrave:common graves[-1].contents.xp.before_death{total:30970} run function hygrave:internal/grave/show_info/fields/show_xp/before_death_only/total_too_big

##> XP after death
execute unless score (graves/show_grave_info/ao/xp/after_death) hygrave.config matches 0 if score (graves/show_grave_info/ao/xp/before_death) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_xp/after_death_only

## Despawn time
execute unless score (graves/show_grave_info/ao/despawn_time) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_despawn_time


## Creation time
execute unless score (graves/show_grave_info/ao/creation_time) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_creation_time

## Items
execute unless score (graves/show_grave_info/ao/items) hygrave.config matches 0 run function hygrave:internal/grave/show_info/fields/show_items with storage hygrave:common graves[-1].data

##
tellraw @s ""

## Status
function hygrave:internal/grave/show_info/fields/show_status/active


##
tellraw @s ""

## Menu
$function hygrave:internal/grave/show_info/fields/show_menu/active {gid: $(gid)}

##
tellraw @s ""