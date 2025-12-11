scoreboard players remove .loop_count hygrave.temp_var 1
execute unless block ~ ~-1 ~ minecraft:water run return run tp @s ~ ~ ~
execute unless score .loop_count hygrave.temp_var matches ..0 if block ~ ~-1 ~ minecraft:water positioned ~ ~-1 ~ run function hygrave:internal/grave/generate/grave_placement_restrictions/on_water