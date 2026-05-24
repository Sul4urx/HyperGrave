data modify storage hygrave:common temp.random_motion.motion set value [0d, 0.2d, 0d]
execute store result storage hygrave:common temp.random_motion.motion[0] double 0.0001 run random value -3000..3000
execute store result storage hygrave:common temp.random_motion.motion[2] double 0.0001 run random value -3000..3000

data modify entity @s Motion set from storage hygrave:common temp.random_motion.motion