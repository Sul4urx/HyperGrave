#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/from_0_5_0

# commit aa5215b
# "rename(config)!: move and refactor config Text Display Properties"
data modify storage hygrave:common configs.value.grave_appearance.text_display_properties set from storage hygrave:common configs.value.graves.text_display
data modify storage hygrave:common configs.text.grave_appearance.text_display_properties set from storage hygrave:common configs.text.graves.text_display

data remove storage hygrave:common configs.value.graves.text_display
data remove storage hygrave:common configs.text.graves.text_display