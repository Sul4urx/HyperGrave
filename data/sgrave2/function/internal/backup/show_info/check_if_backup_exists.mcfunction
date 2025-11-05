#<< backup/show_info/check_conditions
#<< backup/show_info/show_admin

## Check if the backup has ever existed before
$return run execute if data storage sgrave2:common backups[{data:{bid:$(bid)}}]