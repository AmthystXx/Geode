execute as @a run function geode:items/check_for_custom_item
function geode:items/check_for_dispensed_custom_item
execute as @e[type=item_display,tag=geode.custom_block] at @s run function geode:blocks/as_blocks