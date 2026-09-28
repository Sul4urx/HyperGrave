## Add a special case for grave locators

$execute if score (items/grave_locator/keep_after_death) hygrave.config matches 1 if items entity @s $(slot) *[minecraft:custom_data~{"hygrave:common":{grave_locator:{}}}] run return fail
$item replace entity @s $(slot) with minecraft:air