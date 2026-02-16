#<< config/register

# Register sub-configs for Model config

## Player Head

##> Render
execute unless score (grave_appearance/grave_model/player_head/render) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/player_head/render) hygrave.config 1

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.render byte 1 run scoreboard players get (grave_appearance/grave_model/player_head/render) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{render:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.render set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{render:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.render set value "§a✔"

##> Render (ICD)
execute unless score (grave_appearance/grave_model/player_head/render_icd) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/player_head/render_icd) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.render_icd byte 1 run scoreboard players get (grave_appearance/grave_model/player_head/render_icd) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{render_icd:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.render_icd set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{render_icd:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.render_icd set value "§a✔"

##> Vertical Position
execute unless score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 0..4 run scoreboard players set (grave_appearance/grave_model/player_head/vertical_position) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.vertical_position byte 1 run scoreboard players get (grave_appearance/grave_model/player_head/vertical_position) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{vertical_position:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.vertical_position set value "Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{vertical_position:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.vertical_position set value "Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{vertical_position:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.vertical_position set value "Very Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{vertical_position:3b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.vertical_position set value "Sitting"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{vertical_position:4b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.vertical_position set value "Buried"

##> Horizontal Position
execute unless score (grave_appearance/grave_model/player_head/horizontal_position) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/player_head/horizontal_position) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.horizontal_position byte 1 run scoreboard players get (grave_appearance/grave_model/player_head/horizontal_position) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{horizontal_position:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.horizontal_position set value "Center"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.player_head{horizontal_position:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.horizontal_position set value "Behind"

##> Rotation Speed
execute unless score (grave_appearance/grave_model/player_head/rotation_speed) hygrave.config matches -179..179 run scoreboard players set (grave_appearance/grave_model/player_head/rotation_speed) hygrave.config -60

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.rotation_speed int 1 run scoreboard players get (grave_appearance/grave_model/player_head/rotation_speed) hygrave.config

data modify storage hygrave:common configs.text.grave_appearance.grave_model.player_head.rotation_speed set string storage hygrave:common configs.value.grave_appearance.grave_model.player_head.rotation_speed

##> Shadow Strength
execute unless score (grave_appearance/grave_model/player_head/shadow_strength) hygrave.config matches 0..10000 run scoreboard players set (grave_appearance/grave_model/player_head/shadow_strength) hygrave.config 7500

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.player_head.shadow_strength double 0.0001 run scoreboard players get (grave_appearance/grave_model/player_head/shadow_strength) hygrave.config

execute store result storage hygrave:common configs.text.grave_appearance.grave_model.player_head.shadow_strength int 1 run data get storage hygrave:common configs.value.grave_appearance.grave_model.player_head.shadow_strength 10000

## Decoration 1

##> Render
execute unless score (grave_appearance/grave_model/decoration_1/render) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/decoration_1/render) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1.render byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_1/render) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{render:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.render set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{render:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.render set value "§a✔"

##> Render (ICD)
execute unless score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1.render_icd byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{render_icd:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.render_icd set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{render_icd:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.render_icd set value "§a✔"

##> Shape
execute unless score (grave_appearance/grave_model/decoration_1/shape) hygrave.config matches 0..2 run scoreboard players set (grave_appearance/grave_model/decoration_1/shape) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1.shape byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_1/shape) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{shape:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.shape set value "Square Slightly Top Rounded"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{shape:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.shape set value "Square Top Rounded"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{shape:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.shape set value "Square Slightly Rounded"

##> Position
execute unless score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 0..2 run scoreboard players set (grave_appearance/grave_model/decoration_1/position) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1.position byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_1/position) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{position:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.position set value "Perpendicular"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{position:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.position set value "Parallel"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{position:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.position set value "Parallel Slightly Front"

##> Texture
execute unless score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 0..5 run scoreboard players set (grave_appearance/grave_model/decoration_1/texture) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1.texture byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_1/texture) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Dirt"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Stone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Cobblestone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:3b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Mossy Cobblestone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:4b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Stone Bricks"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_1{texture:5b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_1.texture set value "Mossy Stone Bricks"

## Decoration 2

##> Render
execute unless score (grave_appearance/grave_model/decoration_2/render) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/decoration_2/render) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2.render byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_2/render) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{render:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.render set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{render:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.render set value "§a✔"

##> Render (ICD)
execute unless score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2.render_icd byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{render_icd:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.render_icd set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{render_icd:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.render_icd set value "§a✔"

##> Shape
execute unless score (grave_appearance/grave_model/decoration_2/shape) hygrave.config matches 0..2 run scoreboard players set (grave_appearance/grave_model/decoration_2/shape) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2.shape byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_2/shape) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{shape:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.shape set value "Square Slightly Top Rounded"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{shape:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.shape set value "Square Top Rounded"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{shape:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.shape set value "Square Slightly Rounded"

##> Position
execute unless score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 0..2 run scoreboard players set (grave_appearance/grave_model/decoration_2/position) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2.position byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_2/position) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{position:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.position set value "Perpendicular"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{position:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.position set value "Parallel"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{position:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.position set value "Parallel Slightly Front"

##> Texture
execute unless score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 0..5 run scoreboard players set (grave_appearance/grave_model/decoration_2/texture) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2.texture byte 1 run scoreboard players get (grave_appearance/grave_model/decoration_2/texture) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Dirt"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Stone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Cobblestone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:3b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Mossy Cobblestone"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:4b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Stone Bricks"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.decoration_2{texture:5b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.decoration_2.texture set value "Mossy Stone Bricks"

## ICD Item

##> Render
execute unless score (grave_appearance/grave_model/icd_item/render) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/icd_item/render) hygrave.config 0

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.render byte 1 run scoreboard players get (grave_appearance/grave_model/icd_item/render) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{render:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.render set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{render:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.render set value "§a✔"

##> Render (ICD)
execute unless score (grave_appearance/grave_model/icd_item/render_icd) hygrave.config matches 0..1 run scoreboard players set (grave_appearance/grave_model/icd_item/render_icd) hygrave.config 1

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.render_icd byte 1 run scoreboard players get (grave_appearance/grave_model/icd_item/render_icd) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{render_icd:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.render_icd set value "§c❌"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{render_icd:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.render_icd set value "§a✔"

##> Position
execute unless score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 0..7 run scoreboard players set (grave_appearance/grave_model/icd_item/position) hygrave.config 4

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.position byte 1 run scoreboard players get (grave_appearance/grave_model/icd_item/position) hygrave.config

execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:0b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Horizontal Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:1b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Horizontal Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:2b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Horizontal Very Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:3b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Horizontal Sitting"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:4b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Vertical Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:5b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Vertical Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:6b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Vertical Very Slightly Floating"
execute if data storage hygrave:common configs.value.grave_appearance.grave_model.icd_item{position:7b} run data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.position set value "Vertical Attached"

##> Rotation Speed
execute unless score (grave_appearance/grave_model/icd_item/rotation_speed) hygrave.config matches -179..179 run scoreboard players set (grave_appearance/grave_model/icd_item/rotation_speed) hygrave.config -60

execute store result storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.rotation_speed int 1 run scoreboard players get (grave_appearance/grave_model/icd_item/rotation_speed) hygrave.config

data modify storage hygrave:common configs.text.grave_appearance.grave_model.icd_item.rotation_speed set string storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.rotation_speed