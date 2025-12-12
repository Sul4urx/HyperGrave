## Bring the grave element with the specified GID to the last index
$data modify storage hygrave:common temp.grave set from storage hygrave:common graves[{data:{gid:$(gid)}}]
$data remove storage hygrave:common graves[{data:{gid:$(gid)}}]

data modify storage hygrave:common graves append from storage hygrave:common temp.grave