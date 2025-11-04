# This data pack is made by Sul4ur

# #<<< <type> <path> -- executed from <type> sgrave2:<path>
# #<< <path> -- executed from function sgrave2:internal/<path>
# #<! <path> -- executed from function sgrave2:run/<path>

# Executed when the world is loaded

## Internal scores

##> Temp score
scoreboard objectives add sgrave2.temp_var dummy

##> Constant score (Used for storing numbers)
scoreboard objectives add sgrave2.var dummy

##> Config score
scoreboard objectives add sgrave2.config dummy

##> ID scores (Backup, Grave and Player IDs, respectively)
scoreboard objectives add sgrave2.bid dummy
scoreboard objectives add sgrave2.gid dummy
scoreboard objectives add sgrave2.pid dummy

##> Despawn time
scoreboard objectives add sgrave2.despawn_time dummy

##> Death count (used to detect player death)
scoreboard objectives add sgrave2.death_count deathCount

##> ICD cooldown
scoreboard objectives add sgrave2.icd.cooldown dummy

##> Rotation cooldown (used to control rotating objects)
scoreboard objectives add sgrave2.rotation_cooldown dummy


## Trigger scores

##> Show grave info
scoreboard objectives add sgrave2.show_grave_info trigger

##>> View next and view previous
scoreboard objectives add sgrave2.show_grave_info.view_next trigger
scoreboard objectives add sgrave2.show_grave_info.view_previous trigger

##> Remote open graves
scoreboard objectives add sgrave2.remote_open_grave trigger

##> Info and Help
scoreboard objectives add sgrave2.info trigger
scoreboard objectives add sgrave2.help trigger

## Run loop functions
function sgrave2:internal/loop/1s
function sgrave2:internal/loop/1t