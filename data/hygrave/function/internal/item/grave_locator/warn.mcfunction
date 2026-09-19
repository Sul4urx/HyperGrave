## Show the warning message, while making sure the locator's actionbar
## doesn't immediately replace this message so that the player can see the message
## and also play a sound

$function hygrave:internal/item/grave_locator/warn_no_sound {text: $(text)}
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0