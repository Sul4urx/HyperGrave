#<< loop/1t
#<! grave/generate

## Bring the nessecary elements of maps to last index so that we can work with them

##> Player
execute store result storage hygrave:common temp.args.pid int 1 run scoreboard players get @s hygrave.pid 
function hygrave:internal/map/players/lookup with storage hygrave:common temp.args

##> Last Backup
execute store result storage hygrave:common temp.args.bid int 1 run scoreboard players get (last_bid) hygrave.var
function hygrave:internal/map/backups/lookup with storage hygrave:common temp.args.bid

## Reset death count
scoreboard players set @s hygrave.death_count 0

## Tag the dead player as the owner of the grave
tag @s add hygrave.temp.grave.owner

## This item display is the base of the grave
## It holds all of the grave data
execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["hygrave.grave.base","hygrave.temp.grave.base"],item:{id:"minecraft:light_blue_dye",components:{"minecraft:custom_data":{"hygrave:common":{}}}},view_range:0}

## Set despawn time
scoreboard players operation @n[tag=hygrave.temp.grave.base] hygrave.despawn_time = (graves/despawn_time) hygrave.config
execute as @n[tag=hygrave.temp.grave.base] at @s store result entity @s item.components.minecraft:custom_data.hygrave:common.despawn_time int 1 run scoreboard players get @s hygrave.despawn_time

## Set XP for before death
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.levels set from storage hygrave:common players[-1].pcontents.xp.levels
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.xp.before_death.points set from storage hygrave:common players[-1].pcontents.xp.points

xp set @s 0 levels
xp set @s 0 points


## This item display is the player head part of the grave
summon minecraft:item_display ~ ~ ~ {Tags: ["hygrave.grave.player_head", "hygrave.temp.grave.player_head"], item: {id: "minecraft:player_head"}, Glowing:1b, transformation: {left_rotation: [0f,0f,0f,1f], right_rotation: [0f,0f,0f,1f], scale: [1f,1f,1f], translation: [0f,0.75f,0f]}, shadow_radius: 0.5, shadow_strength: 0.75}

item modify entity @n[tag=hygrave.temp.grave.player_head] contents {function:"minecraft:fill_player_head",entity:"this"}

## If Glowing Graves config is false, set the grave to not glow
execute if score (grave_appearance/grave_model/player_head/glowing) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.player_head] Glowing set value 0b

## Copy items from player to grave
execute if score (general/mod_compatibility_mode) hygrave.config matches 0 run function hygrave:internal/grave/generate/copy_items
execute if score (general/mod_compatibility_mode) hygrave.config matches 1 run data modify storage hygrave:common temp.args.distance set from storage hygrave:common configs.value.general.'mod_compatibility_mode/item_collection_distance'
execute if score (general/mod_compatibility_mode) hygrave.config matches 1 as @e[type=item,distance=..16] at @s run function hygrave:internal/grave/generate/collect_items with storage hygrave:common temp.args

## Distribute items
function hygrave:internal/grave/generate/distribute_items

## Calculate total XP
function hygrave:internal/grave/generate/take_xp/main

## Check requirements
execute unless data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/generate/check_requirements/no_item
execute if data entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.items[0] run function hygrave:internal/grave/generate/check_requirements/with_item

execute unless score .check_requirements.gamemodes hygrave.temp_var matches 1 run return run function hygrave:internal/grave/generate/cancel
execute unless score .check_requirements.items hygrave.temp_var matches 1 run return run function hygrave:internal/grave/generate/cancel
execute unless score .check_requirements.xp hygrave.temp_var matches 1 run return run function hygrave:internal/grave/generate/cancel

## If compatibility mode is set to true
## Get rid of player's dropped XP and items
kill @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..16]
kill @e[type=minecraft:experience_orb,nbt={Age:1s},distance=..16]
kill @e[tag=hygrave.temp.item_to_be_deleted]

## Clear player's inventory
execute if score (general/mod_compatibility_mode) hygrave.config matches 0 run function hygrave:internal/grave/generate/clear_player_inv

## Distribute XP
function hygrave:internal/grave/generate/distribute_xp

## Store creation time data
execute as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/generate/get_creation_time

## Add the final elements: interaction, text display, grave models and ICD item
summon minecraft:interaction ~ ~ ~ {Tags:["hygrave.grave.interaction","hygrave.temp.grave.interaction"],width:0.5,height:0.5}
summon minecraft:text_display ~ ~ ~ {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,1f,0f]},alignment:"center",Tags:["hygrave.grave.text_display","hygrave.temp.grave.text_display"],shadow:1b}
summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:green_dye", components: {"minecraft:custom_model_data": {strings: ["hygrave.grave.decoration--1", "", ""]}}}, Tags:["hygrave.grave.model.decoration_1","hygrave.temp.grave.model.decoration_1"], view_range: 0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0.5f,0f]}}
summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:green_dye", components: {"minecraft:custom_model_data": {strings: ["hygrave.grave.decoration--1", "", ""]}}}, Tags:["hygrave.grave.model.decoration_2","hygrave.temp.grave.model.decoration_2"], view_range: 0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0.5f,0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["hygrave.grave.icd", "hygrave.temp.grave.icd"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [0.75f, 0.75f, 0.75f], translation: [0f, 0.5f, 0f]}, item_display: fixed}

## Attach all grave parts to the base grave
ride @n[tag=hygrave.temp.grave.player_head] mount @n[tag=hygrave.temp.grave.base]
ride @n[tag=hygrave.temp.grave.interaction] mount @n[tag=hygrave.temp.grave.base]
ride @n[tag=hygrave.temp.grave.text_display] mount @n[tag=hygrave.temp.grave.base]
ride @n[tag=hygrave.temp.grave.model.decoration_1] mount @n[tag=hygrave.temp.grave.base]
ride @n[tag=hygrave.temp.grave.model.decoration_2] mount @n[tag=hygrave.temp.grave.base]
ride @n[tag=hygrave.temp.grave.icd] mount @n[tag=hygrave.temp.grave.base]

## Grave placement restrictions
function hygrave:internal/grave/generate/grave_placement_restrictions with entity @s

## Store other data
execute as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/map/graves/insert

##> Store PID and GID
execute store result entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.owner.pid int 1 run scoreboard players get @s hygrave.pid
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.gid set from storage hygrave:common graves[-1].data.gid

##> Store relevant BID
data modify storage hygrave:common backups[-1].data.relevant_grave.data.gid set from storage hygrave:common graves[-1].data.gid

##> Add grave data to player/grave map
data modify storage hygrave:common players[-1].graves append from storage hygrave:common graves[-1]

##> Store owner
data modify storage hygrave:common graves[-1].data.owner set from storage hygrave:common players[-1].player
data modify entity @n[tag=hygrave.temp.grave.base] item.components.minecraft:custom_data.hygrave:common.owner set from storage hygrave:common players[-1].player

## Update last_gid variable
scoreboard players operation (last_gid) hygrave.var = @n[tag=hygrave.temp.grave.base] hygrave.gid

## Tell grave mini-info
execute if score (graves/tell_grave_mini_info) hygrave.config matches 1..2 run function hygrave:internal/grave/generate/tell_grave_mini_info/self
execute if score (graves/tell_grave_mini_info) hygrave.config matches 2 run function hygrave:internal/grave/generate/tell_grave_mini_info/others

## Update grave model
execute as @n[tag=hygrave.temp.grave.base] at @s run function hygrave:internal/grave/model

## Make rotations on grave model smooth
data modify entity @n[tag=hygrave.temp.grave.player_head] teleport_duration set value 20
data modify entity @n[tag=hygrave.temp.grave.icd] teleport_duration set value 20

## Remove temp tags
tag @e[tag=hygrave.temp.grave.base] remove hygrave.temp.grave.base
tag @e[tag=hygrave.temp.grave.interaction] remove hygrave.temp.grave.interaction
tag @e[tag=hygrave.temp.grave.player_head] remove hygrave.temp.grave.player_head
tag @e[tag=hygrave.temp.grave.model.decoration_1] remove hygrave.temp.grave.model.decoration_1
tag @e[tag=hygrave.temp.grave.model.decoration_2] remove hygrave.temp.grave.model.decoration_2
tag @e[tag=hygrave.temp.grave.text_display] remove hygrave.temp.grave.text_display
tag @e[tag=hygrave.temp.grave.icd] remove hygrave.temp.grave.icd
tag @e[tag=hygrave.temp.grave.owner] remove hygrave.temp.grave.owner