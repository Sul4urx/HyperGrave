#@> Executed from:
#@>   function hygrave:internal/event/player/player_attacked_grave
#@>   function hygrave:internal/event/player/player_interacted_with_grave

execute store result score .rand_0_3 hygrave.temp_var run random value 0..3

execute if score .rand_0_3 hygrave.temp_var matches 0 run function hygrave:internal/grave/annoying_mode/super_baby_zombie
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run function hygrave:internal/grave/annoying_mode/randomize_grave_placement

execute if score .rand_0_3 hygrave.temp_var matches 0 run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.annoy.super_baby_zombie",\
  "fallback": "§aBaby zombies weren't strong enough?",\
}
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run title @p[tag=hygrave.temp.grave.interactor] actionbar {\
  "translate": "hygrave.annoy.randomize_grave_placement",\
  "fallback": "§cUnable to loot grave. Maybe try again?",\
}

execute if score .rand_0_3 hygrave.temp_var matches 0 run return 1
execute if score .rand_0_3 hygrave.temp_var matches 1..3 run return -1