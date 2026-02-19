#<< grave/main

# Stylize grave if ICD is not activated

## Player Head
execute if score (grave_appearance/grave_model/player_head/render_icd) hygrave.config matches 1.. run data modify entity @n[tag=hygrave.temp.grave.player_head] view_range set value 1.0f
execute if score (grave_appearance/grave_model/player_head/render_icd) hygrave.config matches ..0 run data modify entity @n[tag=hygrave.temp.grave.player_head] view_range set value 0.0f

##> Glow
execute if score (grave_appearance/grave_model/player_head/glowing) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.player_head] Glowing set value 0b
execute if score (grave_appearance/grave_model/player_head/glowing) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.player_head] Glowing set value 1b

##> Rotate
scoreboard players add @n[tag=hygrave.temp.grave.player_head] hygrave.rotation_cooldown 1
execute if score @n[tag=hygrave.temp.grave.player_head] hygrave.rotation_cooldown matches 20.. run data modify storage hygrave:common temp.args.rotation_speed set from storage hygrave:common configs.value.grave_appearance.grave_model.player_head.rotation_speed
execute as @n[tag=hygrave.temp.grave.player_head] at @s if score @s hygrave.rotation_cooldown matches 20.. run function hygrave:internal/grave/rotate with storage hygrave:common temp.args
execute if score (grave_appearance/grave_model/player_head/rotation_speed) hygrave.config matches 0 as @n[tag=hygrave.temp.grave.player_head] at @s run rotate @s 180 0

##> Adjust position
data modify storage hygrave:common temp.transformation set from entity @n[tag=hygrave.temp.grave.player_head] transformation

execute if score (grave_appearance/grave_model/player_head/horizontal_position) hygrave.config matches 0 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0f]
execute if score (grave_appearance/grave_model/player_head/horizontal_position) hygrave.config matches 1 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0.125f]

execute if score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 0 run data modify storage hygrave:common temp.transformation.translation[1] set value 0.75f
execute if score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 1 run data modify storage hygrave:common temp.transformation.translation[1] set value 0.625f
execute if score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 2 run data modify storage hygrave:common temp.transformation.translation[1] set value 0.5625f
execute if score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 3 run data modify storage hygrave:common temp.transformation.translation[1] set value 0.5f
execute if score (grave_appearance/grave_model/player_head/vertical_position) hygrave.config matches 4 run data modify storage hygrave:common temp.transformation.translation[1] set value 0.4375f

data modify entity @n[tag=hygrave.temp.grave.player_head] transformation set from storage hygrave:common temp.transformation

##> Shadow strength
data modify entity @n[tag=hygrave.temp.grave.player_head] shadow_strength set from storage hygrave:common configs.value.grave_appearance.grave_model.player_head.shadow_strength

## Decoration 1
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] view_range set value 1.0f
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches ..0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] view_range set value 0.0f

execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:dirt"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:stone"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 2 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:cobblestone"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 3 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:mossy_cobblestone"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 4 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:stone_bricks"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/texture) hygrave.config matches 5 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:mossy_stone_bricks"

execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/shape) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_slightly_top_rounded"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/shape) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_top_rounded"
execute if score (grave_appearance/grave_model/decoration_1/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_1/shape) hygrave.config matches 2 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_slightly_rounded"

##> Adjust position
data modify storage hygrave:common temp.transformation set from entity @n[tag=hygrave.temp.grave.model.decoration_1] transformation

execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 0 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.5f, 0f]
execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 0 run rotate @n[tag=hygrave.temp.grave.model.decoration_1] 0 0

execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 1 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.0625f, 0.4375f]
execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 1 run rotate @n[tag=hygrave.temp.grave.model.decoration_1] 180 -180

execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 2 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.125f, 0.4375f]
execute if score (grave_appearance/grave_model/decoration_1/position) hygrave.config matches 2 run rotate @n[tag=hygrave.temp.grave.model.decoration_1] 180 -180

data modify entity @n[tag=hygrave.temp.grave.model.decoration_1] transformation set from storage hygrave:common temp.transformation

## Decoration 2
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] view_range set value 1.0f
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches ..0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] view_range set value 0.0f

execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:dirt"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:stone"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 2 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:cobblestone"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 3 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:mossy_cobblestone"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 4 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:stone_bricks"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/texture) hygrave.config matches 5 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[1] set value "block=minecraft:mossy_stone_bricks"

execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/shape) hygrave.config matches 0 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_slightly_top_rounded"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/shape) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_top_rounded"
execute if score (grave_appearance/grave_model/decoration_2/render_icd) hygrave.config matches 1.. if score (grave_appearance/grave_model/decoration_2/shape) hygrave.config matches 2 run data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] item.components.minecraft:custom_model_data.strings[2] set value "shape=square_slightly_rounded"

##> Adjust position
data modify storage hygrave:common temp.transformation2 set from entity @n[tag=hygrave.temp.grave.model.decoration_2] transformation

execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 0 run data modify storage hygrave:common temp.transformation2.translation set value [0f, 0.5f, 0f]
execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 0 run rotate @n[tag=hygrave.temp.grave.model.decoration_2] 0 0

execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 1 run data modify storage hygrave:common temp.transformation2.translation set value [0f, 0.0625f, 0.4375f]
execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 1 run rotate @n[tag=hygrave.temp.grave.model.decoration_2] 180 -180

execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 2 run data modify storage hygrave:common temp.transformation2.translation set value [0f, 0.125f, 0.4375f]
execute if score (grave_appearance/grave_model/decoration_2/position) hygrave.config matches 2 run rotate @n[tag=hygrave.temp.grave.model.decoration_2] 180 -180

data modify entity @n[tag=hygrave.temp.grave.model.decoration_2] transformation set from storage hygrave:common temp.transformation2

## ICD Item
execute if score (grave_appearance/grave_model/icd_item/render_icd) hygrave.config matches 1.. run data modify entity @n[tag=hygrave.temp.grave.icd] view_range set value 1.0f
execute if score (grave_appearance/grave_model/icd_item/render_icd) hygrave.config matches ..0 run data modify entity @n[tag=hygrave.temp.grave.icd] view_range set value 0.0f
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common.items[0] run data modify entity @n[tag=hygrave.temp.grave.icd] view_range set value 0.0f

##> Rotate
scoreboard players add @n[tag=hygrave.temp.grave.icd] hygrave.rotation_cooldown 1
execute if score @n[tag=hygrave.temp.grave.icd] hygrave.rotation_cooldown matches 20.. run data modify storage hygrave:common temp.args.rotation_speed set from storage hygrave:common configs.value.grave_appearance.grave_model.icd_item.rotation_speed
execute as @n[tag=hygrave.temp.grave.icd] at @s if score @s hygrave.rotation_cooldown matches 20.. run function hygrave:internal/grave/rotate with storage hygrave:common temp.args
execute if score (grave_appearance/grave_model/icd_item/rotation_speed) hygrave.config matches 0 as @n[tag=hygrave.temp.grave.icd] at @s run rotate @s 0 ~

##> Adjust position
data modify storage hygrave:common temp.transformation set from entity @n[tag=hygrave.temp.grave.icd] transformation

execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 0 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0.5f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 1 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0.25f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 2 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0.0625f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 3 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0f, 0f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 4 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.5f, 0f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 5 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.4375f, 0f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 6 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.3125f, 0f]
execute if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 7 run data modify storage hygrave:common temp.transformation.translation set value [0f, 0.5f, -0.375f]

data modify entity @n[tag=hygrave.temp.grave.icd] transformation set from storage hygrave:common temp.transformation

execute as @n[tag=hygrave.temp.grave.icd] at @s if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 0..3 run rotate @s ~ -90
execute as @n[tag=hygrave.temp.grave.icd] at @s if score (grave_appearance/grave_model/icd_item/position) hygrave.config matches 4..7 run rotate @s ~ 0