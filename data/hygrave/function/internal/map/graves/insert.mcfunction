## Add grave to grave map
data modify storage hygrave:common graves append value {}

## Set contents (items and XP)
data modify storage hygrave:common graves[-1].contents.items set from entity @s item.components.minecraft:custom_data.hygrave:common.items
data modify storage hygrave:common graves[-1].contents.xp set from entity @s item.components.minecraft:custom_data.hygrave:common.xp

##> The difference between contents.items vs data.items:
##> contents.items: This one will change depending on the items that are currently stored in the grave. If an item is taken from the grave using ICD, that item will be removed from contents.items . If the grave is broken, the list will be emptied.
##> data.items: This one will never change after grave generation. Useful for Grave Infos and stuff like that.
data modify storage hygrave:common graves[-1].data.items set from entity @s item.components.minecraft:custom_data.hygrave:common.items

## Set data (status, position, dimension, etc)

##> Status
data modify storage hygrave:common graves[-1].data.status set value {destroyed:0b}

##> Position
data modify storage hygrave:common graves[-1].data.pos set from entity @s Pos

##> Dimension resource location
data modify storage hygrave:common graves[-1].data.dimension.id set from entity @p[distance=0..] Dimension
data modify storage hygrave:common graves[-1].data.dimension.name set from entity @p[distance=0..] Dimension

##> To display position of a grave, pos_integer is used instead of pos
##> because integers don't have a suffix
##> and also because graves always generate in a fixed location
data modify storage hygrave:common graves[-1].data.pos_integer set value [I;]
data modify storage hygrave:common graves[-1].data.pos_integer append from storage hygrave:common graves[-1].data.pos[0] 
data modify storage hygrave:common graves[-1].data.pos_integer append from storage hygrave:common graves[-1].data.pos[1]
data modify storage hygrave:common graves[-1].data.pos_integer append from storage hygrave:common graves[-1].data.pos[2]

##> Creation time (used for show grave info feature)
data modify storage hygrave:common graves[-1].data.creation_time set from entity @s item.components.minecraft:custom_data.hygrave:common.creation_time

##> Dimension name
execute if dimension minecraft:overworld run data modify storage hygrave:common graves[-1].data.dimension.name set value "The Overworld"
execute if dimension minecraft:the_nether run data modify storage hygrave:common graves[-1].data.dimension.name set value "The Nether"
execute if dimension minecraft:the_end run data modify storage hygrave:common graves[-1].data.dimension.name set value "The End"

## Set GID
execute store result score @s hygrave.gid run scoreboard players add .global hygrave.gid 1
execute store result storage hygrave:common graves[-1].data.gid int 1 run scoreboard players get @s hygrave.gid

