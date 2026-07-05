#@> Executed from:
#@>   function hygrave:internal/versioning/upgrade/from_0_5_0

# commit eeadb3a
# "refactor(config)!: refactor config glowing_graves"
scoreboard players operation (grave_appearance/grave_model/player_head/glowing) hygrave.config = (graves/glowing_graves) hygrave.config

scoreboard players reset (graves/glowing_graves) hygrave.config

data remove storage hygrave:common configs.value.graves.glowing_graves
data remove storage hygrave:common configs.text.graves.glowing_graves