execute if score items geode_features = on geode_features as @a run function geode:items/check_for_custom_item
execute if score items geode_features = on geode_features run function geode:items/check_for_dispensed_custom_item

execute if score blocks geode_features = on geode_features as @e[type=item_display,tag=geode.custom_block] at @s run function geode:blocks/as_blocks

execute if score totems geode_features = on geode_features as @a run function geode:totems/tick

execute if score bobbers geode_features = on geode_features as @a at @s run function geode:bobbers/tick