#@> Executed from:
#@>   function hygrave:internal/grave/model
#@>   function hygrave:internal/grave/icd/model

## Rotate
$rotate @s ~$(rotation_speed) ~

## Reset rotation cooldown
scoreboard players set @s hygrave.rotation_cooldown 0