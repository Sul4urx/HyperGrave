#@> Executed from:
#@>   function hygrave:internal/versioning/unsupported/existing_grave_entity

$data modify storage hygrave:common graves[{data:{gid:$(gid)}}].data.status.destroyed set value true
$data modify storage hygrave:common graves[{data:{gid:$(gid)}}].data.status.destruction_type set value "manually"
$scoreboard players set (is_active,gid=$(gid)) hygrave.var 0

function hygrave:internal/load