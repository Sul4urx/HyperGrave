#@> Executed from:
#@>   function hygrave:internal/grave/generate
#@>   function hygrave:internal/grave/force_generate

## Tell grave mini-info

## Location and dimension
execute if score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 1 if score (graves/show_grave_info/ao/location.dim) hygrave.config matches 1 run tellraw @s {\
  "translate": "\n§c☠ %s §6#%s §7|§r %s §7|§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.owner.name",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.gid",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "storage": "hygrave:common",\
      "color": "gold",\
      "separator": "§7, "\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "storage": "hygrave:common",\
      "color": "green"\
    }\
  ]\
}

## Location only
execute if score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 1 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 1 run tellraw @s {\
  "translate": "\n§c☠ %s §6#%s §7—§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.owner.name",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.gid",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "storage": "hygrave:common",\
      "color": "gold",\
      "separator": "§7, "\
    }\
  ]\
}

## Dimension only
execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 1 if score (graves/show_grave_info/ao/location.dim) hygrave.config matches 1 run tellraw @s {\
  "translate": "\n§c☠ %s §6#%s §7—§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.owner.name",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.gid",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "storage": "hygrave:common",\
      "color": "green"\
    }\
  ]\
}

## No location or dimension
execute unless score (graves/show_grave_info/ao/location.xyz) hygrave.config matches 1 unless score (graves/show_grave_info/ao/location.dim) hygrave.config matches 1 run tellraw @s {\
  "translate": "\n§c☠ %s §6#%s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.owner.name",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.hygrave:common.gid",\
      "entity": "@n[tag=hygrave.temp.grave.base]",\
      "color": "gold"\
    }\
  ]\
}