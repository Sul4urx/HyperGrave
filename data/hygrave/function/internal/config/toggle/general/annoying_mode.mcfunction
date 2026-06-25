#@> Executed from:
#@>   function hygrave:internal/config/open_page/general/secret

## Toggle value
scoreboard players add (general/annoying_mode) hygrave.config 1
execute if score (general/annoying_mode) hygrave.config matches 2.. run scoreboard players set (general/annoying_mode) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/general/secret