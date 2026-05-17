#@> Executed by the player

## Disable Mod Compatibility Mode temporarily, try to generate grave, 
## then reset the config back to its previous value.
scoreboard players operation .mod_compatibility_mode hygrave.temp_var = (general/mod_compatibility_mode) hygrave.config
scoreboard players set (general/mod_compatibility_mode) hygrave.config 0

## Update player databases and PContents
## So that it uses the player's inventory and xp in current tick
function hygrave:internal/database/players/main

## Generate backup
function hygrave:internal/backup/generate

## Generate grave
function hygrave:internal/grave/force_generate

scoreboard players operation (general/mod_compatibility_mode) hygrave.config = .mod_compatibility_mode hygrave.temp_var 