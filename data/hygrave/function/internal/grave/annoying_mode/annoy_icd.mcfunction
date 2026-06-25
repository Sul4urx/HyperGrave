execute store result score .rand_0_3 hygrave.temp_var run random value 0..3

execute if score .rand_0_3 hygrave.temp_var matches 0 run function hygrave:internal/grave/annoying_mode/vote_mobs
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run function hygrave:internal/grave/annoying_mode/randomize_grave_placement

execute if score .rand_0_3 hygrave.temp_var matches 0 run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.annoy.vote_mobs",\
  "fallback": "§aYou voted for these, remember?",\
}
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.annoy_icd.randomize_grave_placement",\
  "fallback": "§cUnable to loot item from the grave. Maybe try again?",\
}

execute if score .rand_0_3 hygrave.temp_var matches 0 run return 1
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run return -1