#<< config/open_page/graves/item_distribution

## Subtract 1 from index
$scoreboard players set .index hygrave.temp_var $(index)
scoreboard players remove .index hygrave.temp_var 1
execute store result storage hygrave:common temp.args.index int 1 run scoreboard players get .index hygrave.temp_var

## Check if enchantment index exists
scoreboard players set .ench_id_list_is_valid hygrave.temp_var 0

function hygrave:internal/config/change/graves/item_distribution/grave_generation_success/keep/ench_ids/remove_ench_index_macro with storage hygrave:common temp.args

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/item_distribution