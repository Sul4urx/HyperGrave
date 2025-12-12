#<< grave/show_info/check_conditions
#<< grave/show_info/show_admin

## Check if the grave has ever existed before
$return run execute if data storage hygrave:common graves[{data:{gid:$(gid)}}]