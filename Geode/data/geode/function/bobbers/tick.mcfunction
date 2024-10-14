execute if predicate geode:bobbers/mainhand if entity @n[type=minecraft:fishing_bobber,tag=!cast] run function geode:bobbers/custom with entity @s SelectedItem.components."minecraft:custom_data"
execute if predicate geode:bobbers/offhand if entity @n[type=minecraft:fishing_bobber,tag=!cast] run function geode:bobbers/custom with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"
tag @n[type=minecraft:fishing_bobber] add cast

execute as @e[type=item_display,tag=geode.custom_bobber] at @s unless entity @n[type=fishing_bobber,distance=..1] run kill @s