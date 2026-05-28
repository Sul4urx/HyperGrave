#@> Executed from:
#@>   function hygrave:internal/grave/show_list_admin/fill_list

$data modify storage hygrave:common temp.args.text0 set from storage hygrave:common temp.grave_list.$(type)[0].text
$data modify storage hygrave:common temp.args.text1 set from storage hygrave:common temp.grave_list.$(type)[1].text
$data modify storage hygrave:common temp.args.text2 set from storage hygrave:common temp.grave_list.$(type)[2].text
$data modify storage hygrave:common temp.args.text3 set from storage hygrave:common temp.grave_list.$(type)[3].text

$data modify storage hygrave:common temp.args.type set value "$(type)"
execute if data storage hygrave:common temp.args{type: "ao"} run data modify storage hygrave:common temp.args.gid_color set value "green"
execute if data storage hygrave:common temp.args{type: "bo"} run data modify storage hygrave:common temp.args.gid_color set value "red"
execute if data storage hygrave:common temp.args{type: "an"} run data modify storage hygrave:common temp.args.gid_color set value "green"
execute if data storage hygrave:common temp.args{type: "bn"} run data modify storage hygrave:common temp.args.gid_color set value "red"

execute if score .loop_count hygrave.temp_var matches 1 run function hygrave:internal/grave/show_list_admin/show/1 with storage hygrave:common temp.args
execute if score .loop_count hygrave.temp_var matches 2 run function hygrave:internal/grave/show_list_admin/show/2 with storage hygrave:common temp.args
execute if score .loop_count hygrave.temp_var matches 3 run function hygrave:internal/grave/show_list_admin/show/3 with storage hygrave:common temp.args
execute if score .loop_count hygrave.temp_var matches 4.. run function hygrave:internal/grave/show_list_admin/show/4 with storage hygrave:common temp.args

$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]

$execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.$(type)[]

$execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "$(type)"}