#@> Executed from:
#@>   function hygrave:internal/config/open_page/graves/grave_placement_restrictions

## Toggle value
scoreboard players add (graves/grave_placement_restrictions_restrictions/on_air) hygrave.config 1
execute if score (graves/grave_placement_restrictions_restrictions/on_air) hygrave.config matches 2.. run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_air) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "graves/grave_placement_restrictions"}