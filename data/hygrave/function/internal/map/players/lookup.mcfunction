## Bring the player element with the specified PID to the last index
$data modify storage hygrave:common temp.player set from storage hygrave:common players[{player:{pid:$(pid)}}]
$data remove storage hygrave:common players[{player:{pid:$(pid)}}]

data modify storage hygrave:common players append from storage hygrave:common temp.player