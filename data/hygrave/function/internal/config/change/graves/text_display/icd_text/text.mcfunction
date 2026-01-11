#<< config/open_page/graves/text_display_properties/icd_text

$data modify storage hygrave:common temp.config.value set value $(value)
data modify storage hygrave:common temp.config.value.text set string storage hygrave:common temp.config.value.text

$data modify storage hygrave:common configs.value.graves.text_display.icd_text.line_$(line_idx).text_$(text_idx).text.translate set from storage hygrave:common temp.config.value.text

$title @s actionbar {\
  "translate": "hygrave.change_config_message.text_display.icd_text.line_$(line_idx).text_$(text_idx).text.success",\
  "fallback": "Successfully changed text of Text $(text_idx) from Line $(line_idx)."\
}

## Update configs
function hygrave:internal/config/register

## Refresh page
function hygrave:internal/config/open_page/graves/text_display_properties/icd_text