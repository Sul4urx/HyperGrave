#@> Executed from:
#@>   function hygrave:internal/grave/generate/grave_placement_restrictions

## Get minimum build height limit
execute store result storage hygrave:common temp.mcargs.'database/dimensions/append/height_limit/test/min'.height int 1 run scoreboard players set .height hygrave.temp_var -2016
function hygrave:internal/database/dimensions/append/height_limit/test/min with storage hygrave:common temp.mcargs.'database/dimensions/append/height_limit/test/min'

## Get maximum build height limit
execute store result storage hygrave:common temp.mcargs.'database/dimensions/append/height_limit/test/max'.height int 1 run scoreboard players set .height hygrave.temp_var 2031
function hygrave:internal/database/dimensions/append/height_limit/test/max with storage hygrave:common temp.mcargs.'database/dimensions/append/height_limit/test/max'

## Store values
function hygrave:internal/database/dimensions/append/height_limit/test/store with entity @s