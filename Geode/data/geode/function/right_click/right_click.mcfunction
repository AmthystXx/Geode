advancement revoke @s only geode:right_click

execute if predicate geode:right_click/mainhand run function geode:right_click/use_item with entity @s SelectedItem.components.minecraft:custom_data
execute if predicate geode:right_click/offhand run function geode:right_click/use_item with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"