#@> Executed from:
#@>   function hygrave:internal/load

## Resolve breaking changes

##> commit eeadb3a "refactor(config)!: refactor config glowing_graves"
function hygrave:internal/versioning/upgrade/resolve_breaking/eeadb3a

##> commit 6abfe91 "refactor(config)!: refactor config graves/icd to grave_interaction/icd_properties"
function hygrave:internal/versioning/upgrade/resolve_breaking/6abfe91

##> commit aa5215b "rename(config)!: move and refactor config Text Display Properties"
function hygrave:internal/versioning/upgrade/resolve_breaking/aa5215b

##> commit 9f5b72d "feat: add data.items data to grave maps"
function hygrave:internal/versioning/upgrade/resolve_breaking/9f5b72d

##> commit b6e66ba "chore(gi,bi)!: improve creation_time field and fix many issues with this field"
function hygrave:internal/versioning/upgrade/resolve_breaking/b6e66ba

## Data version
function hygrave:internal/misc/store_data_version

## Success message
tellraw @a {\
  "translate": "hygrave.versioning.successful_upgrade.from_0_5_0_to_2_1_1",\
  "fallback": "\n§aSuccessfully upgraded HyperGrave 0.5.0 to 2.1.1-alpha.\nYou do not need to do anything else. Enjoy!\n"\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t