#<< config/open_page/requirements/grave_remote_looting_requirements

## Toggle value
$scoreboard players add (requirements/grave_remote_looting_requirements/owners/gamemodes/$(gamemode)) hygrave.config 1
$execute if score (requirements/grave_remote_looting_requirements/owners/gamemodes/$(gamemode)) hygrave.config matches 2.. run scoreboard players set (requirements/grave_remote_looting_requirements/owners/gamemodes/$(gamemode)) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/requirements/grave_remote_looting_requirements