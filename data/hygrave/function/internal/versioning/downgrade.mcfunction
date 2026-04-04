#@> Executed from:
#@>   function hygrave:internal/load

## Data version
function hygrave:internal/misc/store_data_version

## Success message
tellraw @a {\
  "translate": "hygrave.versioning.successful_downgrade.to_2_0_0",\
  "fallback": "\n§aSuccessfully downgraded HyperGrave %s to 2.0.0.\nYou do not need to do anything else. Enjoy!\n",\
  "with": [\
    {\
      "nbt": "data.schema_version_1.hygrave.data_version.version.form.string",\
      "storage": "hygrave:common",\
      "color": "red"\
    }\
  ]\
}

## Run loop functions
function hygrave:internal/loop/1s
function hygrave:internal/loop/1t