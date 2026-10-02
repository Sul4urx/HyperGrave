#@> Executed from:
#@>   function hygrave:internal/load

## Resolve breaking changes
## (There are none haha!)

## Data version
function hygrave:internal/misc/store_data_version

## Success message
tellraw @a {\
  "translate": "hygrave.versioning.successful_upgrade.from_2_1_1_to_2_3_0",\
  "fallback": "\n§aSuccessfully upgraded HyperGrave 2.1.1 to 2.3.0.\n\n§aYou do not need to do anything else. Enjoy!\n"\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t