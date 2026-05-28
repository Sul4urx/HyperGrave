#@> Executed from:
#@>   function hygrave:internal/grave/main

$execute if score (is_active,gid=$(gid)) hygrave.var matches 1 run return 1
return 0