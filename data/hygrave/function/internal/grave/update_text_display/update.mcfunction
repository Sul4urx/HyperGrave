#<< grave/update_text_display/prepare

## Update current text display
$data modify entity @n[tag=hygrave.temp.grave.text_display] text set value ["", $(text1), $(despawn_time_text), $(text2)]
