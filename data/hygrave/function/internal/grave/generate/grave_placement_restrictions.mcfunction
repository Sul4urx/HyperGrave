#<< grave/generate

## If min and max build height limits have not been
## defined for this dimension, define them
$execute unless data storage hygrave:common dimensions."$(Dimension)".build_height_limit run function hygrave:internal/map/dimensions/insert/height_limit/main
$execute store result score .min_height hygrave.temp_var run data get storage hygrave:common dimensions."$(Dimension)".build_height_limit.min
$execute store result score .max_height hygrave.temp_var run data get storage hygrave:common dimensions."$(Dimension)".build_height_limit.max

## Restrict grave placement below min build height limit
execute if score (graves/grave_placement_restrictions_restrictions/below_build_height_limit) hygrave.config matches 1 run function hygrave:internal/grave/generate/grave_placement_restrictions/below_build_height_limit

## Restrict grave placement above max build height limit
execute if score (graves/grave_placement_restrictions_restrictions/above_build_height_limit) hygrave.config matches 1 run function hygrave:internal/grave/generate/grave_placement_restrictions/above_build_height_limit

## Restrict grave placement for other factors
scoreboard players operation .loop_count hygrave.temp_var = .max_height hygrave.temp_var
scoreboard players operation .loop_count hygrave.temp_var -= .min_height hygrave.temp_var
scoreboard players add .loop_count hygrave.temp_var 1

execute if score (graves/grave_placement_restrictions_restrictions/on_air) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/on_air

execute if score (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/on_non_solid_blocks

execute if score (graves/grave_placement_restrictions_restrictions/in_solid_blocks) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/in_solid_blocks

execute if score (graves/grave_placement_restrictions_restrictions/in_water) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/in_water

execute if score (graves/grave_placement_restrictions_restrictions/on_water) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/on_water

execute if score (graves/grave_placement_restrictions_restrictions/on_lava) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/on_lava

execute if score (graves/grave_placement_restrictions_restrictions/in_lava) hygrave.config matches 1 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/in_lava


## If all y positions between min and max build height limit
## have been occupied and grave cannot generate in any of them,
## generate the grave on the max build height limit instead
execute if score .loop_count hygrave.temp_var matches ..0 as @n[tag=hygrave.temp.grave.base] at @s run data modify storage hygrave:common temp.args.y_pos set from storage hygrave:common dimensions."$(Dimension)".build_height_limit.max

execute if score .loop_count hygrave.temp_var matches ..0 as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/grave_placement_restrictions/teleport with storage hygrave:common temp.args

execute if score .loop_count hygrave.temp_var matches ..0 as @n[tag=hygrave.temp.grave.base] at @s run tp @s ~ ~1 ~



