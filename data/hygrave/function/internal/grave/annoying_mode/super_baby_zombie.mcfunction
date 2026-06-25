summon minecraft:zombie ~ ~ ~ {CustomName: {"translate": "hygrave.super_baby_zombie", "fallback": "Super Baby Zombie"}, Tags: ["hygrave.super_baby_zombie", "hygrave.temp.super_baby_zombie"], IsBaby: 1b, CustomNameVisible: 1b, DeathLootTable: ""}

attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:max_health base set 60
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:scale base set 0.5
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:movement_speed base set 0.625
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:step_height base set 36
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:fall_damage_multiplier base set 0
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:water_movement_efficiency base set 1
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:movement_efficiency base set 1
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:follow_range base set 2048
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:spawn_reinforcements base set 1
attribute @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:burning_time base set 0

effect give @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] minecraft:fire_resistance infinite 0 true

tag @n[type=minecraft:zombie,tag=hygrave.temp.super_baby_zombie] remove hygrave.temp.super_baby_zombie