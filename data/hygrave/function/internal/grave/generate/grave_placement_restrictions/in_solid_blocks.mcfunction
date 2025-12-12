scoreboard players remove .loop_count hygrave.temp_var 1
execute if block ~ ~ ~ #hygrave:grave_replaceable run return run tp @s ~ ~ ~
execute if block ~ ~ ~ #minecraft:air run return run tp @s ~ ~ ~
execute unless score .loop_count hygrave.temp_var matches ..0 unless block ~ ~ ~ #hygrave:grave_replaceable unless block ~ ~ ~ #minecraft:air positioned ~ ~1 ~ run function hygrave:internal/grave/generate/grave_placement_restrictions/in_solid_blocks