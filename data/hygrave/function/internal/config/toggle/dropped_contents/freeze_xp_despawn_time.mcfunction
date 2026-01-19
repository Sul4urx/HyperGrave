#<< config/open_page/dropped_contents

## Toggle value
scoreboard players add (dropped_contents/freeze_xp_despawn_time) hygrave.config 1
execute if score (dropped_contents/freeze_xp_despawn_time) hygrave.config matches 2.. run scoreboard players set (dropped_contents/freeze_xp_despawn_time) hygrave.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/dropped_contents