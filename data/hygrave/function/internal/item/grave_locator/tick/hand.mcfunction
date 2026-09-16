## Make sure the player and the grave are in the same dimension
data modify storage hygrave:common temp.grave_locator.dimension set from entity @s Dimension
execute store success score .grave_locator.not_same_dimension hygrave.temp_var run data modify storage hygrave:common temp.grave_locator.dimension set from storage hygrave:common graves[-1].data.dimension.id

## Determine approximate distance
function hygrave:internal/item/grave_locator/get_distance
data modify storage hygrave:common temp.grave_locator.distance set string storage hygrave:common temp.grave_locator.distance

## Determine where the arrow should be facing
data modify storage hygrave:common temp.grave_locator.dir_arrow set value "§c?"

function hygrave:internal/item/grave_locator/get_arrow_direction

## Determine GID
data modify storage hygrave:common temp.grave_locator.gid set string storage hygrave:common graves[-1].data.gid

## Show to player
execute if score (items/grave_locator/show_distance) hygrave.config matches 1 unless score @s hygrave.item.grave_locator.actionbar_pause_ticks matches 1.. if score .grave_locator.distance hygrave.temp_var matches 1.. run title @s actionbar {\
  "translate": "hygrave.item.grave_locator.tick.mainhand.actionbar",\
  "fallback": "§6#%s §7|| %s §7|| %s§em",\
  "with": [\
    {\
      "nbt": "temp.grave_locator.gid",\
      "storage": "hygrave:common",\
      "color": "gold",\
      "interpret": true\
    },\
    {\
      "nbt": "temp.grave_locator.dir_arrow",\
      "storage": "hygrave:common",\
      "interpret": true\
    },\
    {\
      "nbt": "temp.grave_locator.distance",\
      "storage": "hygrave:common",\
      "color": "yellow",\
      "interpret": true\
    }\
  ]\
}

execute if score (items/grave_locator/show_distance) hygrave.config matches 1 unless score @s hygrave.item.grave_locator.actionbar_pause_ticks matches 1.. unless score .grave_locator.distance hygrave.temp_var matches 1.. run title @s actionbar {\
  "translate": "hygrave.item.grave_locator.tick.mainhand.actionbar.no_distance",\
  "fallback": "§6#%s §7|| %s",\
  "with": [\
    {\
      "nbt": "temp.grave_locator.gid",\
      "storage": "hygrave:common",\
      "color": "gold",\
      "interpret": true\
    },\
    {\
      "nbt": "temp.grave_locator.dir_arrow",\
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}

execute unless score (items/grave_locator/show_distance) hygrave.config matches 1 unless score @s hygrave.item.grave_locator.actionbar_pause_ticks matches 1.. run title @s actionbar {\
  "translate": "hygrave.item.grave_locator.tick.mainhand.actionbar.no_distance",\
  "fallback": "§6#%s §7|| %s",\
  "with": [\
    {\
      "nbt": "temp.grave_locator.gid",\
      "storage": "hygrave:common",\
      "color": "gold",\
      "interpret": true\
    },\
    {\
      "nbt": "temp.grave_locator.dir_arrow",\
      "storage": "hygrave:common",\
      "interpret": true\
    }\
  ]\
}