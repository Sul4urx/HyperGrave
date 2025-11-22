#<< grave/despawn_time/delete_grave

## Spawn XP orb
summon minecraft:experience_orb ~ ~ ~ {Tags: ["sgrave2.temp.grave.xp_to_drop", "sgrave2.grave.xp"], Age: -32768s}

## Apply XP configs to the XP orb

##> Dropped Contents / XP despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.xp_to_drop] sgrave2.despawn_time = (dropped_contents/xp_despawn_time) sgrave2.config

##> Dropped Contents / Invulnerable XP
execute if score (dropped_contents/invulnerable_xp) sgrave2.config matches 1 run data modify entity @n[tag=sgrave2.temp.grave.xp_to_drop] Invulnerable set value 1b

## Set XP value
data modify entity @n[tag=sgrave2.temp.grave.xp_to_drop] Value set from entity @s item.components.minecraft:custom_data.sgrave2:common.xp.after_death.total


## If the XP orb doesn't store any XP, get rid of it
execute store result score .dropped_xp_total sgrave2.temp_var run data get entity @s item.components.minecraft:custom_data.sgrave2:common.xp.after_death.total
execute unless score .dropped_xp_total sgrave2.temp_var matches 1.. run kill @e[tag=sgrave2.temp.grave.xp_to_drop]

## Remove temp tag
tag @e[tag=sgrave2.temp.grave.xp_to_drop] remove sgrave2.temp.grave.xp_to_drop