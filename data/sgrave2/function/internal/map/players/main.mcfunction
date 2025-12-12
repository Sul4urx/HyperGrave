#<< loop/1t

## Bring the nessecary elements of maps to last index so that we can work with them

##> Remove temp data
data remove storage sgrave2:common players[].temp

##> Player
execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @s sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args

## Store PContents (Previous tick Contents)
## Used for getting content data from player right when the player loses them
## Meaning it is used for Mod Compatibility Mode and backups

##> XP
execute store result storage sgrave2:common players[-1].pcontents.xp.levels int 1 run xp query @s levels
execute store result storage sgrave2:common players[-1].pcontents.xp.points int 1 run xp query @s points

##> Items
data modify storage sgrave2:common players[-1].pcontents.items.inventory set from entity @s Inventory
execute unless data entity @s Inventory[0] run data modify storage sgrave2:common players[-1].pcontents.items.inventory set value []
