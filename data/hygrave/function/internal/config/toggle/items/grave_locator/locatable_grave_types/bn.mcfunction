#@> Executed from:
#@>   function hygrave:internal/config/open_page/items/grave_locator

## Toggle value
scoreboard players add (items/grave_locator/locatable_grave_types/bn) hygrave.config 1
execute if score (items/grave_locator/locatable_grave_types/bn) hygrave.config matches 2.. run scoreboard players set (items/grave_locator/locatable_grave_types/bn) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "items/grave_locator"}