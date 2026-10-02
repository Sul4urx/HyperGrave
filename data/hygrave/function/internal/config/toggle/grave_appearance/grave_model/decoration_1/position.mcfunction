#@> Executed from:
#@>   function hygrave:internal/config/open_page/grave_appearance/grave_model/decoration_1_expanded

## Toggle value
scoreboard players add (grave_appearance/grave_model/decoration_1/position) hygrave.config 1
execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 3.. run scoreboard players set (grave_appearance/grave_model/decoration_1/position) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "grave_appearance/grave_model/decoration_1_expanded"}