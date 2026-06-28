#@> Executed from:
#@>   function hygrave:internal/loop/1t

## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
data modify storage hygrave:common graves append from storage hygrave:common graves[-129]
data remove storage hygrave:common graves[-129]

## Delete grave
function hygrave:internal/database/graves/delete {destruction_type: "despawned", destroyer: {cause: "grave_database_too_big"}}

## Remove grave from database
data remove storage hygrave:common graves[-1]