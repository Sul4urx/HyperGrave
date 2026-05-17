#@> Executed from:
#@>   function hygrave:internal/loop/1t
#@>   function hygrave:run/grave/generate

## If Mod Compatibility Mode is disabled, update player databases and PContents
## So that it uses the player's inventory and xp in current tick
execute unless score (general/mod_compatibility_mode) hygrave.config matches 1.. run function hygrave:internal/database/players/main

## Generate backup
function hygrave:internal/backup/generate

## Generate grave
function hygrave:internal/grave/generate