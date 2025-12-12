## Disable Mod Compatibility Mode temporarily, try to generate grave, 
## then reset the config back to its previous value.
scoreboard players operation .mod_compatibility_mode hygrave.temp_var = (general/mod_compatibility_mode) hygrave.config
scoreboard players set (general/mod_compatibility_mode) hygrave.config 0

execute as @s at @s run function hygrave:internal/grave/generate

scoreboard players operation (general/mod_compatibility_mode) hygrave.config = .mod_compatibility_mode hygrave.temp_var 