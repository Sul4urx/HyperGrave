#<< map/dimensions/insert/height_limit/main

## If these two conditions both return false:

##> if block ~ $(height) ~ minecraft:air
##> unless block ~ $(height) ~ minecraft:air

## then that means that poition `~ $(height) ~` is above maximum build height limit
scoreboard players set .conditions hygrave.temp_var 1
$execute store result score .condition_1 hygrave.temp_var if block ~ $(height) ~ minecraft:air
$execute store result score .condition_2 hygrave.temp_var unless block ~ $(height) ~ minecraft:air
execute if score .condition_1 hygrave.temp_var matches 0 if score .condition_2 hygrave.temp_var matches 0 run scoreboard players set .conditions hygrave.temp_var 0

## Once `~ $(height) ~` goes below maximum build height limit,
## then we can determine the maximum build height limit for this dimension
$execute if score .conditions hygrave.temp_var matches 1 run return run scoreboard players set .min_height hygrave.temp_var $(height)
execute store result storage hygrave:common temp.args.height int 1 run scoreboard players add .height hygrave.temp_var 16
execute unless score .height hygrave.temp_var matches 2031.. run function hygrave:internal/map/dimensions/insert/height_limit/test/min with storage hygrave:common temp.args