#@> Executed from:
#@>   function hygrave:internal/config/open_page/requirements/grave_generation_requirements

## Toggle value
$scoreboard players add (requirements/grave_generation_requirements/with_item/gamemodes/$(gamemode)) hygrave.config 1
$execute if score (requirements/grave_generation_requirements/with_item/gamemodes/$(gamemode)) hygrave.config matches 2.. run scoreboard players set (requirements/grave_generation_requirements/with_item/gamemodes/$(gamemode)) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "requirements/grave_generation_requirements"}