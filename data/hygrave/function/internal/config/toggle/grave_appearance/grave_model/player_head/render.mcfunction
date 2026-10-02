#@> Executed from:
#@>   function hygrave:internal/config/open_page/grave_appearance/grave_model/player_head_expanded

## Toggle value
scoreboard players add (grave_appearance/grave_model/player_head/render) hygrave.config 1
execute if score (grave_appearance/grave_model/player_head/render) hygrave.config matches 2.. run scoreboard players set (grave_appearance/grave_model/player_head/render) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "grave_appearance/grave_model/player_head_expanded"}