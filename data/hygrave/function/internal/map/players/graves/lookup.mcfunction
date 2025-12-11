## Bring the grave element with the specified GID to the last index
$data modify storage hygrave:common temp.grave set from storage hygrave:common players[-1].graves[{data:{gid:$(gid)}}]
$data remove storage hygrave:common players[-1].graves[{data:{gid:$(gid)}}]

data modify storage hygrave:common players[-1].graves append from storage hygrave:common temp.grave