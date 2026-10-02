#@> Executed from:
#@>   function hygrave:internal/item/grave_locator/warn

## Show the warning message, while making sure the locator's actionbar
## doesn't immediately replace this message so that the player can see the message

$title @s actionbar $(text)
scoreboard players set @s hygrave.item.grave_locator.actionbar_pause_ticks 60