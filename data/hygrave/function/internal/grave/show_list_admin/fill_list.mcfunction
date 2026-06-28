#@> Executed from:
#@>   function hygrave:internal/grave/show_list_admin
#@>   function hygrave:internal/grave/show_list_admin/fill_list

$execute store result score .show_grave_list.owner_pid hygrave.temp_var run data get storage hygrave:common graves[{data:{gid:$(gid)}}].data.owner.pid
$execute store result score .show_grave_list.grave_is_active hygrave.temp_var unless data storage hygrave:common graves[{data:{gid:$(gid)}}].data.status{destroyed:1b}

## AO
$execute if score @s hygrave.pid = .show_grave_list.owner_pid hygrave.temp_var if score .show_grave_list.grave_is_active hygrave.temp_var matches 1 run data modify storage hygrave:common temp.grave_list.ao append value {gid: $(gid), text: {\
    "text": "#$(gid)",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.grave_list_display.gid_click_description",\
        "fallback": "Click to view the information of grave §6#%s§r.",\
        "with": ["§6$(gid)"]\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:run/grave/admin/show_grave_info {gid: $(gid)}"\
    }\
  }}

## BO
$execute if score @s hygrave.pid = .show_grave_list.owner_pid hygrave.temp_var if score .show_grave_list.grave_is_active hygrave.temp_var matches 0 run data modify storage hygrave:common temp.grave_list.bo append value {gid: $(gid), text: {\
    "text": "#$(gid)",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.grave_list_display.gid_click_description",\
        "fallback": "Click to view the information of grave §6#%s§r.",\
        "with": ["§6$(gid)"]\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:run/grave/admin/show_grave_info {gid: $(gid)}"\
    }\
  }}

## AN
$execute unless score @s hygrave.pid = .show_grave_list.owner_pid hygrave.temp_var if score .show_grave_list.grave_is_active hygrave.temp_var matches 1 run data modify storage hygrave:common temp.grave_list.an append value {gid: $(gid), text: {\
    "text": "#$(gid)",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.grave_list_display.gid_click_description",\
        "fallback": "Click to view the information of grave §6#%s§r.",\
        "with": ["§6$(gid)"]\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:run/grave/admin/show_grave_info {gid: $(gid)}"\
    }\
  }}

## BN
$execute unless score @s hygrave.pid = .show_grave_list.owner_pid hygrave.temp_var if score .show_grave_list.grave_is_active hygrave.temp_var matches 0 run data modify storage hygrave:common temp.grave_list.bn append value {gid: $(gid), text: {\
    "text": "#$(gid)",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "hygrave.grave_list_display.gid_click_description",\
        "fallback": "Click to view the information of grave §6#%s§r.",\
        "with": ["§6$(gid)"]\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function hygrave:run/grave/admin/show_grave_info {gid: $(gid)}"\
    }\
  }}

## Loop
execute if score .show_grave_list.gid hygrave.temp_var >= (last_gid) hygrave.var run return 1

scoreboard players add .show_grave_list.gid hygrave.temp_var 1
execute store result storage hygrave:common temp.mcargs.'grave/show_list_admin/fill_list'.gid int 1 run scoreboard players get .show_grave_list.gid hygrave.temp_var

function hygrave:internal/grave/show_list_admin/fill_list with storage hygrave:common temp.mcargs.'grave/show_list_admin/fill_list'