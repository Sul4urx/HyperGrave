#<< config/open_page/costs/grave_looting_costs

## Toggle value
$scoreboard players add (costs/grave_looting_costs/owners/gamemodes/$(gamemode)) hygrave.config 1
$execute if score (costs/grave_looting_costs/owners/gamemodes/$(gamemode)) hygrave.config matches 2.. run scoreboard players set (costs/grave_looting_costs/owners/gamemodes/$(gamemode)) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_looting_costs