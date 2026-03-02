#<< map/players/main
#<< backup/generate

## Store PContents (Previous tick Contents)
## Used for getting content data from player right when the player loses them
## Meaning it is used for Mod Compatibility Mode and backups

##> XP
execute store result storage hygrave:common players[-1].pcontents.xp.levels int 1 run xp query @s levels
execute store result storage hygrave:common players[-1].pcontents.xp.points int 1 run xp query @s points

##> Items
data modify storage hygrave:common players[-1].pcontents.items.inventory set from entity @s Inventory
data modify storage hygrave:common players[-1].pcontents.items.equipment set from entity @s equipment

execute unless data entity @s equipment.head.id unless data entity @s equipment.chest.id unless data entity @s equipment.legs.id unless data entity @s equipment.feet.id run data modify storage hygrave:common players[-1].pcontents.items.equipment set value {}
execute unless data entity @s Inventory[0] run data modify storage hygrave:common players[-1].pcontents.items.inventory set value []