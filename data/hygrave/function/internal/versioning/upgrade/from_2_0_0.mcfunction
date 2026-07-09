#@> Executed from:
#@>   function hygrave:internal/load

## Resolve breaking changes

##> commit b6e66ba "chore(gi,bi)!: improve creation_time field and fix many issues with this field"
function hygrave:internal/versioning/upgrade/resolve_breaking/b6e66ba

## Data version
function hygrave:internal/misc/store_data_version

## Success message
tellraw @a {\
  "translate": "hygrave.versioning.successful_upgrade.from_2_0_0_to_2_1_1",\
  "fallback": "\n§aSuccessfully upgraded HyperGrave 2.0.0 to 2.1.1-alpha.\n\n§6ℹ You might not be able to view the in-game creation time of graves that were generated prior to this upgrade.\n\n§aYou do not need to do anything else. Enjoy!\n"\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t