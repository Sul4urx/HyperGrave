#<< grave/main
#<< grave/icd/check_conditions
#<< grave/icd/display

## Cancel or deactivate ICD feature
execute on passengers if entity @s[tag=hygrave.grave.icd] run kill @s
data modify entity @s item.components.minecraft:custom_data.hygrave:common.icd_activated set value 0b
