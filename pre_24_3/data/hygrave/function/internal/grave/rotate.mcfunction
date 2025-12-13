#<< grave/main
#<< grave/icd/display

## Rotate grave clockwise
tp @s ~ ~ ~ ~-60 ~
ride @s mount @n[tag=hygrave.temp.grave.base]

## Reset rotation cooldown
scoreboard players set @s hygrave.rotation_cooldown 0