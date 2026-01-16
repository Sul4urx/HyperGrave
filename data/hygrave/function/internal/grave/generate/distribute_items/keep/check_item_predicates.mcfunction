#<< grave/generate/distribute_items/keep
#<< grave/generate/distribute_items/keep/check_item_predicates

## Remove temp data
data remove storage hygrave:common temp.args

## Check if item passes provided predicate
## and if it does, mark the item for the operation to be applied later
$execute if predicate {\
  condition: "minecraft:any_of",\
  terms: [\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          contents: {\
            items: $(keep_items) \
          }\
        }\
      }\
    },\
    {\
      condition: "minecraft:entity_properties",\
      entity: "this",\
      predicate: {\
        slots: {\
          contents: {\
            predicates: {\
              "minecraft:enchantments": [\
                {\
                  enchantments: $(keep_enchs) \
                }\
              ]\
            }\
          }\
        }\
      }\
    }\
  ]\
} run scoreboard players set .keep_item hygrave.temp_var 1
