#<< config/open_page/costs/grave_remote_looting_costs

## Subtract 1 from index
$scoreboard players set .index hygrave.temp_var $(index)
scoreboard players remove .index hygrave.temp_var 1
execute store result storage hygrave:common temp.args.index int 1 run scoreboard players get .index hygrave.temp_var

## Check if item index exists
scoreboard players set .item_id_list_is_valid hygrave.temp_var 0

function hygrave:internal/config/change/costs/grave_remote_looting_costs/non_owners/item_ids/remove_item_index_macro with storage hygrave:common temp.args

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/costs/grave_remote_looting_costs