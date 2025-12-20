#<< grave/pop

## Spawn XP orb
summon minecraft:experience_orb ~ ~ ~ {Tags: ["hygrave.temp.grave.xp_to_give_back", "hygrave.grave.xp"], Age: -32768s}

## Apply XP configs to the XP orb

##> Dropped Contents / XP despawn time
scoreboard players operation @n[tag=hygrave.temp.grave.xp_to_give_back] hygrave.despawn_time = (dropped_contents/xp_despawn_time) hygrave.config

##> Dropped Contents / Invulnerable XP
execute if score (dropped_contents/invulnerable_xp) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.xp_to_give_back] Invulnerable set value 1b

##> Dropped Contents / No Gravity XP
execute if score (dropped_contents/no_gravity_xp) hygrave.config matches 1 run data modify entity @n[tag=hygrave.temp.grave.xp_to_give_back] NoGravity set value 1b

## Set XP value
data modify entity @n[tag=hygrave.temp.grave.xp_to_give_back] Value set from entity @s item.components.minecraft:custom_data.hygrave:common.xp.after_death.total

## If the XP orb doesn't store any XP, get rid of it
execute store result score .dropped_xp_total hygrave.temp_var run data get entity @s item.components.minecraft:custom_data.hygrave:common.xp.after_death.total
execute unless score .dropped_xp_total hygrave.temp_var matches 1.. run kill @e[tag=hygrave.temp.grave.xp_to_give_back]

## Remove temp tag
tag @e[tag=hygrave.temp.grave.xp_to_give_back] remove hygrave.temp.grave.xp_to_give_back