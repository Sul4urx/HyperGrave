#<< config/open_page/costs/grave_opening_costs

## Toggle value
$scoreboard players add (costs/grave_opening_costs/non_owners/gamemodes/$(gamemode)) hygrave.config 1
$execute if score (costs/grave_opening_costs/non_owners/gamemodes/$(gamemode)) hygrave.config matches 2.. run scoreboard players set (costs/grave_opening_costs/non_owners/gamemodes/$(gamemode)) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_opening_costs