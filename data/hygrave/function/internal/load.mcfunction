# This data pack is made by Sul4ur

# #<<< <type> <path> -- executed from <type> hygrave:<path>
# #<< <path> -- executed from function hygrave:internal/<path>
# #<! <path> -- executed from function hygrave:run/<path>

# Executed when the world is loaded

## Internal scores

##> Temp score
scoreboard objectives add hygrave.temp_var dummy

##> Constant score (Used for storing numbers)
scoreboard objectives add hygrave.var dummy

##> Config score
scoreboard objectives add hygrave.config dummy

##> ID scores (Backup, Grave and Player IDs, respectively)
scoreboard objectives add hygrave.bid dummy
scoreboard objectives add hygrave.gid dummy
scoreboard objectives add hygrave.pid dummy

##> Despawn time
scoreboard objectives add hygrave.despawn_time dummy

##> Death count (used to detect player death)
scoreboard objectives add hygrave.death_count deathCount

##> ICD cooldown
scoreboard objectives add hygrave.icd.cooldown dummy

##> Rotation cooldown (used to control rotating objects)
scoreboard objectives add hygrave.rotation_cooldown dummy


## Trigger scores

##> Show grave info
scoreboard objectives add hygrave.show_grave_info trigger

##>> View next and view previous
scoreboard objectives add hygrave.show_grave_info.view_next trigger
scoreboard objectives add hygrave.show_grave_info.view_previous trigger

##> Remotely loot graves
scoreboard objectives add hygrave.remote_loot_grave trigger

##> Info and Help
scoreboard objectives add hygrave.info trigger
scoreboard objectives add hygrave.help trigger

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t