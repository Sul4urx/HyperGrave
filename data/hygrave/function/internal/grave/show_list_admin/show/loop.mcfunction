#@> Executed from:
#@>   function hygrave:internal/grave/show_list_admin/fill_list

$data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.text0 set from storage hygrave:common temp.grave_list.$(type)[0].text
$data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.text1 set from storage hygrave:common temp.grave_list.$(type)[1].text
$data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.text2 set from storage hygrave:common temp.grave_list.$(type)[2].text
$data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.text3 set from storage hygrave:common temp.grave_list.$(type)[3].text

$data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.type set value "$(type)"
execute if data storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'{type: "ao"} run data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.gid_color set value "green"
execute if data storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'{type: "bo"} run data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.gid_color set value "red"
execute if data storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'{type: "an"} run data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.gid_color set value "green"
execute if data storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'{type: "bn"} run data modify storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'.gid_color set value "red"

execute if score .loop_count hygrave.temp_var matches 1 run function hygrave:internal/grave/show_list_admin/show/1 with storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'
execute if score .loop_count hygrave.temp_var matches 2 run function hygrave:internal/grave/show_list_admin/show/2 with storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'
execute if score .loop_count hygrave.temp_var matches 3 run function hygrave:internal/grave/show_list_admin/show/3 with storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'
execute if score .loop_count hygrave.temp_var matches 4.. run function hygrave:internal/grave/show_list_admin/show/4 with storage hygrave:common temp.mcargs.'grave/show_list_admin/show/?'

$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]
$data remove storage hygrave:common temp.grave_list.$(type)[0]

$execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.$(type)[]

$execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "$(type)"}