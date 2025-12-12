#<< loop/1t
#<! grave/generate

execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @s sgrave2.pid 
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args

## Reset death count
scoreboard players set @s sgrave2.death_count 0

## Tag the dead player as the owner of the grave
tag @s add sgrave2.temp.grave.owner

## This item display is the base of the grave
## It holds all of the grave data
execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["sgrave2.grave.base","sgrave2.temp.grave.base"],item:{id:"minecraft:light_blue_dye",components:{"minecraft:custom_data":{"sgrave2:common":{}}}},view_range:0}

## Set despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.base] sgrave2.despawn_time = (graves/despawn_time) sgrave2.config
execute as @n[tag=sgrave2.temp.grave.base] at @s store result entity @s item.components.minecraft:custom_data.sgrave2:common.despawn_time int 1 run scoreboard players get @s sgrave2.despawn_time

## Set XP for before death
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.levels set from storage sgrave2:common players[-1].pcontents.xp.levels
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.points set from storage sgrave2:common players[-1].pcontents.xp.points

xp set @s 0 levels
xp set @s 0 points


## This item display is the player head part of the grave
summon minecraft:item_display ~ ~ ~ {Tags: ["sgrave2.grave.player_head", "sgrave2.temp.grave.player_head"], item: {id: "minecraft:player_head"}, Glowing:1b, transformation: {left_rotation: [0f,0f,0f,1f], right_rotation: [0f,0f,0f,1f], scale: [1f,1f,1f], translation: [0f,0.75f,0f]}, shadow_radius: 0.5, shadow_strength: 0.75, teleport_duration: 20}

item modify entity @n[tag=sgrave2.temp.grave.player_head] contents {function:"minecraft:fill_player_head",entity:"this"}

## If Glowing Graves config is false, set the grave to not glow
execute if score (graves/glowing_graves) sgrave2.config matches 0 run data modify entity @n[tag=sgrave2.temp.grave.player_head] Glowing set value 0b

## Copy items from player to grave
execute if score (general/mod_compatibility_mode) sgrave2.config matches 0 run function sgrave2:internal/grave/generate/copy_items
execute if score (general/mod_compatibility_mode) sgrave2.config matches 1 run data modify storage sgrave2:common temp.args.distance set from storage sgrave2:common configs.value.general.'mod_compatibility_mode/item_collection_distance'
execute if score (general/mod_compatibility_mode) sgrave2.config matches 1 as @e[type=item,distance=..16] at @s run function sgrave2:internal/grave/generate/collect_items with storage sgrave2:common temp.args

## Distribute items
function sgrave2:internal/grave/generate/distribute_items

## Calculate total XP
function sgrave2:internal/grave/generate/take_xp/main

## Check costs
execute unless data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/check_costs/no_item
execute if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/check_costs/with_item

execute unless score .check_costs.gamemodes sgrave2.temp_var matches 1 run return run function sgrave2:internal/grave/generate/cancel
execute unless score .check_costs.items sgrave2.temp_var matches 1 run return run function sgrave2:internal/grave/generate/cancel
execute unless score .check_costs.xp sgrave2.temp_var matches 1 run return run function sgrave2:internal/grave/generate/cancel

## If compatibility mode is set to true
## Get rid of player's dropped XP and items
kill @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..16]
kill @e[type=minecraft:experience_orb,nbt={Age:1s},distance=..16]
kill @e[tag=sgrave2.temp.item_to_be_deleted]

## Clear player's inventory
execute if score (general/mod_compatibility_mode) sgrave2.config matches 0 run function sgrave2:internal/grave/generate/clear_player_inv

## Distribute XP
function sgrave2:internal/grave/generate/distribute_xp

## Store creation time data
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/grave/generate/get_creation_time

## Add the final elements: interaction and text display
summon minecraft:interaction ~ ~ ~ {Tags:["sgrave2.grave.interaction","sgrave2.temp.grave.interaction"],width:0.5,height:0.5}
summon minecraft:text_display ~ ~ ~ {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,1f,0f]},alignment:"center",Tags:["sgrave2.grave.text_display","sgrave2.temp.grave.text_display"],shadow:1b}

## Attach all grave parts to the base grave
ride @n[tag=sgrave2.temp.grave.player_head] mount @n[tag=sgrave2.temp.grave.base]
ride @n[tag=sgrave2.temp.grave.interaction] mount @n[tag=sgrave2.temp.grave.base]
ride @n[tag=sgrave2.temp.grave.text_display] mount @n[tag=sgrave2.temp.grave.base]

## Grave placement restrictions
function sgrave2:internal/grave/generate/grave_placement_restrictions with entity @s

## Store other data
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/map/graves/insert

##> Store PID and GIDs
execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner.pid int 1 run scoreboard players get @s sgrave2.pid
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.gid set from storage sgrave2:common graves[-1].data.gid

##> Add grave data to player/grave map
data modify storage sgrave2:common players[-1].graves append from storage sgrave2:common graves[-1]

##> Store owner
data modify storage sgrave2:common graves[-1].data.owner set from storage sgrave2:common players[-1].player
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner set from storage sgrave2:common players[-1].player

## Update last_gid variable
scoreboard players operation (last_gid) sgrave2.var = @n[tag=sgrave2.temp.grave.base] sgrave2.gid

## Tell grave mini-info
execute if score (graves/tell_grave_mini_info) sgrave2.config matches 1..2 run function sgrave2:internal/grave/generate/tell_grave_mini_info/self
execute if score (graves/tell_grave_mini_info) sgrave2.config matches 2 run function sgrave2:internal/grave/generate/tell_grave_mini_info/others

## Remove temp tags
tag @e[tag=sgrave2.temp.grave.base] remove sgrave2.temp.grave.base
tag @e[tag=sgrave2.temp.grave.interaction] remove sgrave2.temp.grave.interaction
tag @e[tag=sgrave2.temp.grave.player_head] remove sgrave2.temp.grave.player_head
tag @e[tag=sgrave2.temp.grave.owner] remove sgrave2.temp.grave.owner