#@> Executed from:
#@>   function hygrave:run/reinstall

## Check if the confirmation code was entered correctly
$data modify storage hygrave:common temp.reinstall_confirm set value "$(confirm)"
execute unless data storage hygrave:common temp{reinstall_confirm:"REINSTALL"} unless data storage hygrave:common temp{reinstall_confirm:"REINSTALL_NO_OUTPUT_MESSAGE"} run return -7

## Uninstall if confirmed
function hygrave:internal/misc/uninstall {confirm: "UNINSTALL_NO_OUTPUT_MESSAGE"}

## Reload to reinstall
reload

## Make sure info is shown before success message
scoreboard objectives add hygrave.info trigger
function hygrave:run/info

## Show success message
execute unless data storage hygrave:common temp{reinstall_confirm:"REINSTALL_NO_OUTPUT_MESSAGE"} run tellraw @s {\
  "translate": "hygrave.uninstall.success",\
  "fallback": "§6Successfully reinstalled HyperGrave.\n",\
}

