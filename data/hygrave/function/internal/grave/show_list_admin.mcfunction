#@> Executed from:
#@>   function hygrave:internal/loop/1t

## If there are no active graves,
## Tell the player and return
execute unless data storage hygrave:common graves[] run return run title @s actionbar {\
  "translate": "hygrave.grave_list_display.fail.grave_none_exist",\
  "fallback": "§cNo graves have been generated yet."\
}

## Partition GIDs into 4 types: AO, BO, AN, BN
## And also store their text components
data modify storage hygrave:common temp.grave_list set value {ao: [], bo: [], an: [], bn: []}

scoreboard players operation .show_grave_list.gid hygrave.temp_var = (first_gid) hygrave.var
execute store result storage hygrave:common temp.args.gid int 1 run scoreboard players get .show_grave_list.gid hygrave.temp_var

function hygrave:internal/grave/show_list_admin/fill_list with storage hygrave:common temp.args

execute \
  unless data storage hygrave:common temp.grave_list.ao[] \
  unless data storage hygrave:common temp.grave_list.bo[] \
  unless data storage hygrave:common temp.grave_list.an[] \
  unless data storage hygrave:common temp.grave_list.bn[] \
run return run tellraw @s {\
  "translate": "hygrave.grave_list_display.error.illegal_type_partition",\
  "fallback": "§cThere is at least one grave that isn't of type AO, BO, AN or BN. This is a bug, please report this."\
}

## Show
tellraw @s ""
tellraw @s {\
  "translate": "hygrave.grave_list_display.title",\
  "fallback": " §lGrave GIDs:",\
  "hover_event": {\
    "action": "show_text",\
    "value": {\
      "translate": "hygrave.grave_list_display_description.title",\
      "fallback": "A list of all grave GIDs sorted by type and then GID.",\
    }\
  },\
}

##> AO
execute if data storage hygrave:common temp.grave_list.ao[] run tellraw @s {"translate": "hygrave.grave_list_display.category.ao","fallback": "   Your active graves:"}

execute unless data storage hygrave:common temp.grave_list.ao[] run tellraw @s {"translate": "hygrave.grave_list_display.category.ao","fallback": "   §7Your active graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.ao[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "ao"}

##> BO
execute if data storage hygrave:common temp.grave_list.bo[] run tellraw @s {"translate": "hygrave.grave_list_display.category.bo","fallback": "   Your broken graves:"}

execute unless data storage hygrave:common temp.grave_list.bo[] run tellraw @s {"translate": "hygrave.grave_list_display.category.bo","fallback": "   §7Your broken graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.bo[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "bo"}

##> AN
execute if data storage hygrave:common temp.grave_list.an[] run tellraw @s {"translate": "hygrave.grave_list_display.category.an","fallback": "   Others' active graves:"}

execute unless data storage hygrave:common temp.grave_list.an[] run tellraw @s {"translate": "hygrave.grave_list_display.category.an","fallback": "   §7Others' active graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.an[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "an"}

##> BN
execute if data storage hygrave:common temp.grave_list.bn[] run tellraw @s {"translate": "hygrave.grave_list_display.category.bn","fallback": "   Others' broken graves:"}

execute unless data storage hygrave:common temp.grave_list.bn[] run tellraw @s {"translate": "hygrave.grave_list_display.category.bn","fallback": "   §7Others' broken graves: None"}

execute store result score .loop_count hygrave.temp_var if data storage hygrave:common temp.grave_list.bn[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/grave/show_list_admin/show/loop {type: "bn"}

##>
tellraw @s ""

##> Menu
tellraw @s [\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "text": "§b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "hygrave.grave_list.refresh.description",\
            "fallback": "Click to refresh this list."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function hygrave:run/grave/admin/show_grave_list"\
        }\
      }\
    ]\
  }\
]

##>
tellraw @s ""