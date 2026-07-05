#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/from_0_5_0
#@>   function hygrave:internal/versioning/upgrade/from_2_0_0

# commit b6e66ba
# "chore(gi,bi)!: improve creation_time field and fix many issues with this field"
execute store result score .loop_count hygrave.temp_var if data storage hygrave:common graves[]
execute if score .loop_count hygrave.temp_var matches 1.. run function hygrave:internal/versioning/upgrade/resolve_breaking/b6e66ba/loop