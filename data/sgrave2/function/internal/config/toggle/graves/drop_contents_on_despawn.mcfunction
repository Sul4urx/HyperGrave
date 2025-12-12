#<< config/open_page/graves

## Toggle value
scoreboard players add (graves/drop_contents_on_despawn) sgrave2.config 1
execute if score (graves/drop_contents_on_despawn) sgrave2.config matches 2.. run scoreboard players set (graves/drop_contents_on_despawn) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves