#<< config/register

# Register sub-configs for Click Behavior config

## While ICD is not activated

##> Attack
execute unless score (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config matches 0..2 run scoreboard players set (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config 1

execute store result storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active.attack byte 1 run scoreboard players get (grave_interaction/click_behavior/icd_is_not_active/attack) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{attack:0b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.attack set value "Do Nothing"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{attack:1b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.attack set value "Drop Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{attack:2b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.attack set value "Retrieve Contents"

##> Use
execute unless score (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config matches 0..2 run scoreboard players set (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config 2

execute store result storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active.use byte 1 run scoreboard players get (grave_interaction/click_behavior/icd_is_not_active/use) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{use:0b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.use set value "Do Nothing"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{use:1b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.use set value "Drop Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_not_active{use:2b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_not_active.use set value "Retrieve Contents"

## While ICD is activated

##> Attack
execute unless score (grave_interaction/click_behavior/icd_is_active/attack) hygrave.config matches 0..4 run scoreboard players set (grave_interaction/click_behavior/icd_is_active/attack) hygrave.config 3

execute store result storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active.attack byte 1 run scoreboard players get (grave_interaction/click_behavior/icd_is_active/attack) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{attack:0b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.attack set value "Do Nothing"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{attack:1b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.attack set value "Drop Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{attack:2b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.attack set value "Retrieve Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{attack:3b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.attack set value "Drop ICD Item"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{attack:4b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.attack set value "Retrieve ICD Item"

##> Use
execute unless score (grave_interaction/click_behavior/icd_is_active/use) hygrave.config matches 0..4 run scoreboard players set (grave_interaction/click_behavior/icd_is_active/use) hygrave.config 4

execute store result storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active.use byte 1 run scoreboard players get (grave_interaction/click_behavior/icd_is_active/use) hygrave.config

execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{use:0b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.use set value "Do Nothing"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{use:1b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.use set value "Drop Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{use:2b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.use set value "Retrieve Contents"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{use:3b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.use set value "Drop ICD Item"
execute if data storage hygrave:common configs.value.grave_interaction.click_behavior.icd_is_active{use:4b} run data modify storage hygrave:common configs.text.grave_interaction.click_behavior.icd_is_active.use set value "Retrieve ICD Item"