execute as @a run function geode:items/check_for_custom_item
function geode:items/check_for_dispensed_custom_item

execute as @e[type=item_display,tag=geode.custom_block] at @s run function geode:blocks/as_blocks

execute as @e[type=marker,tag=player_marker] run function geode:arbitrary_player_data/tick with entity @s data

execute as @a at @s run function geode:totems/tick