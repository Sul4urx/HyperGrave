#@> Executed from:
#@>   advancement hygrave:grave_locator/tick/mainhand


## Reset advancement
advancement revoke @s only hygrave:grave_locator/tick/mainhand

## Prevent locators from working if the player has one of each in each of their hands
execute if items entity @s weapon.offhand *[minecraft:custom_data~{\
  "hygrave:common": {\
    "grave_locator": {}\
  }\
}] run return fail

## Bring the nessecary elements of databases to last index so that we can work with them

##> Grave
data modify storage hygrave:common temp.mcargs.'database/graves/lookup'.gid set from entity @s[type=minecraft:player] SelectedItem.components.minecraft:custom_data.hygrave:common.grave_locator.target_grave.data.gid
function hygrave:internal/database/graves/lookup with storage hygrave:common temp.mcargs.'database/graves/lookup'

## Tick
function hygrave:internal/item/grave_locator/tick/hand