#@> Executed from:
#@>   function hygrave:internal/config/open_page/general

## Toggle value
scoreboard players add (general/change_gamerules) hygrave.config 1
execute if score (general/change_gamerules) hygrave.config matches 2.. run scoreboard players set (general/change_gamerules) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "general"}