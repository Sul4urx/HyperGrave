## Bring the backup element with the specified BID to the last index
$data modify storage sgrave2:common temp.backup set from storage sgrave2:common backups[{data:{bid:$(bid)}}]
$data remove storage sgrave2:common backups[{data:{bid:$(bid)}}]

data modify storage sgrave2:common backups append from storage sgrave2:common temp.backup