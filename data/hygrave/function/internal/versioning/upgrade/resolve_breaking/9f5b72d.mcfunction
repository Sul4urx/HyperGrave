#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/from_0_5_0

# commit 9f5b72d
# "feat: add data.items data to grave maps"
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common graves[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d/loop