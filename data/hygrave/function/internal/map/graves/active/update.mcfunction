#<< loop/1t

## Update active graves
data modify storage hygrave:common active_graves set from storage hygrave:common graves
data remove storage hygrave:common active_graves[{data:{status:{destroyed:1b}}}]