#@> Executed from:
#@>   function hygrave:internal/config/open_page/graves

## Toggle value
scoreboard players add (graves/drop_contents_on_despawn) hygrave.config 1
execute if score (graves/drop_contents_on_despawn) hygrave.config matches 2.. run scoreboard players set (graves/drop_contents_on_despawn) hygrave.config 0

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page_with_sound/click_sound {page: "graves"}