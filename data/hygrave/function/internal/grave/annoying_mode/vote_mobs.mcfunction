#@> Executed from:
#@>   function hygrave:internal/grave/annoying_mode/annoy_icd

execute store result score .rand_1_2 hygrave.temp_var run random value 1..2
execute store result score .rand_1_4 hygrave.temp_var run random value 1..4

execute if score .rand_1_2 hygrave.temp_var matches 1..2 run summon minecraft:phantom ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.phantom", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.phantom", "hygrave.temp.vote_mob.phantom"], CustomNameVisible: 1b, DeathLootTable: ""}
execute if score .rand_1_2 hygrave.temp_var matches 2 run summon minecraft:phantom ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.phantom", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.phantom", "hygrave.temp.vote_mob.phantom"], CustomNameVisible: 1b, DeathLootTable: ""}

execute if score .rand_1_4 hygrave.temp_var matches 1..4 run summon minecraft:glow_squid ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.glow_squid", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.glow_squid", "hygrave.temp.vote_mob.glow_squid"], CustomNameVisible: 1b, DeathLootTable: ""}
execute if score .rand_1_4 hygrave.temp_var matches 2..4 run summon minecraft:glow_squid ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.glow_squid", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.glow_squid", "hygrave.temp.vote_mob.glow_squid"], CustomNameVisible: 1b, DeathLootTable: ""}
execute if score .rand_1_4 hygrave.temp_var matches 3..4 run summon minecraft:glow_squid ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.glow_squid", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.glow_squid", "hygrave.temp.vote_mob.glow_squid"], CustomNameVisible: 1b, DeathLootTable: ""}
execute if score .rand_1_4 hygrave.temp_var matches 4 run summon minecraft:glow_squid ~ ~ ~ {CustomName: {"translate": "hygrave.vote_mobs.glow_squid", "fallback": "Winner Mob"}, Tags: ["hygrave.vote_mob.glow_squid", "hygrave.temp.vote_mob.glow_squid"], CustomNameVisible: 1b, DeathLootTable: ""}

execute as @e[type=minecraft:phantom,tag=hygrave.temp.vote_mob.phantom] at @s run attribute @s minecraft:burning_time base set 0
effect give @e[type=minecraft:phantom,tag=hygrave.temp.vote_mob.phantom] minecraft:fire_resistance infinite 0 true

tag @n[type=minecraft:phantom,tag=hygrave.temp.vote_mob.phantom] remove hygrave.temp.vote_mob.phantom
tag @n[type=minecraft:glow_squid,tag=hygrave.temp.vote_mob.glow_squid] remove hygrave.temp.vote_mob.glow_squid