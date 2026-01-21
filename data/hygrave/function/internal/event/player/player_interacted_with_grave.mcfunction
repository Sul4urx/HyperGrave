#<< grave/main

execute unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config matches 1 run function hygrave:internal/grave/pop
execute unless data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config matches 2 run function hygrave:internal/grave/unpack

execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 1 run function hygrave:internal/grave/pop
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 2 run function hygrave:internal/grave/unpack
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 3 run function hygrave:internal/grave/pop_icd_item
execute if data entity @s item.components.minecraft:custom_data.hygrave:common{icd_activated:1b} if score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 4 run function hygrave:internal/grave/unpack_icd_item