#@> Executed from:
#@>   function hygrave:internal/versioning/unsupported/existing_grave_entity

$data modify storage hygrave:common graves[{gid:$(gid)}].data.status.destroyed set value true
$scoreboard players set (is_active,gid=$(gid)) hygrave.var 0

reload