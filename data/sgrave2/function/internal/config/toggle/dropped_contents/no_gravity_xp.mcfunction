#<< config/open_page/dropped_contents

## Toggle value
scoreboard players add (dropped_contents/no_gravity_xp) sgrave2.config 1
execute if score (dropped_contents/no_gravity_xp) sgrave2.config matches 2.. run scoreboard players set (dropped_contents/no_gravity_xp) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/dropped_contents