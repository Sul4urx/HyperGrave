#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d
#@>   function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d/loop

## For all elements in graves database, assign grave.contents.items to graves.data.items
data modify storage hygrave:common graves[-1].data.items set from storage hygrave:common graves[-1].contents.items

data modify storage hygrave:common graves prepend from storage hygrave:common graves[-1]
data remove storage hygrave:common graves[-1]

scoreboard players remove .loop_count hygrave.temp_var 1

execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d/loop