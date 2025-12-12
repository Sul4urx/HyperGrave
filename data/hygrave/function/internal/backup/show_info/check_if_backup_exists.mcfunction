#<< backup/show_info

## Check if the backup has ever existed before
$return run execute if data storage hygrave:common backups[{data:{bid:$(bid)}}]