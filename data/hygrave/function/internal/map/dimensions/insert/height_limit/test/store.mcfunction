#<< map/dimensions/insert/height_limit/main

## Save minimum and maximum build height limit values for later use
$execute store result storage hygrave:common dimensions."$(Dimension)".build_height_limit.max int 1 run scoreboard players get .max_height hygrave.temp_var
$execute store result storage hygrave:common dimensions."$(Dimension)".build_height_limit.min int 1 run scoreboard players get .min_height hygrave.temp_var

