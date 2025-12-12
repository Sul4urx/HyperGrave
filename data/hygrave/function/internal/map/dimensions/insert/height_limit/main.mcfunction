## Get minimum build height limit
execute store result storage hygrave:common temp.args.height int 1 run scoreboard players set .height hygrave.temp_var -2016
function hygrave:internal/map/dimensions/insert/height_limit/test/min with storage hygrave:common temp.args

## Get maximum build height limit
execute store result storage hygrave:common temp.args.height int 1 run scoreboard players set .height hygrave.temp_var 2031
function hygrave:internal/map/dimensions/insert/height_limit/test/max with storage hygrave:common temp.args

## Store values
function hygrave:internal/map/dimensions/insert/height_limit/test/store with entity @s