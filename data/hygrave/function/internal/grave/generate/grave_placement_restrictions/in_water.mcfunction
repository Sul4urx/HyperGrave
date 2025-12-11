scoreboard players remove .loop_count hygrave.temp_var 1
execute if block ~ ~ ~ minecraft:water run return run tp @s ~ ~ ~
execute unless score .loop_count hygrave.temp_var matches ..0 unless block ~ ~ ~ minecraft:water positioned ~ ~1 ~ run function hygrave:internal/grave/generate/grave_placement_restrictions/in_water