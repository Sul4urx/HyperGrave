## Bring the backup element with the specified BID to the last index
$data modify storage hygrave:common temp.backup set from storage hygrave:common backups[{data:{bid:$(bid)}}]
$data remove storage hygrave:common backups[{data:{bid:$(bid)}}]

data modify storage hygrave:common backups append from storage hygrave:common temp.backup