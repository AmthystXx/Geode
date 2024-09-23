execute as @a at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids if predicate geode:totems/mainhand run data modify entity @n[type=marker,tag=player_marker] data.geode_totem set from entity @s SelectedItem.components."minecraft:custom_data".geode_totem
execute as @a at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids if predicate geode:totems/offhand run data modify entity @n[type=marker,tag=player_marker] data.geode_totem set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".geode_totem
execute as @a unless predicate geode:totems/mainhand unless predicate geode:totems/offhand run scoreboard players set @s geode_totem_unequip_timer 0

scoreboard players add @a[scores={geode_totem_timer=0}] geode_totem_timer 1
execute as @a[scores={geode_totem_timer=1}] at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids run function geode:totems/apply_effects with entity @n[type=marker,tag=player_marker] data

scoreboard players add @a[scores={geode_totem_unequip_timer=..1}] geode_totem_unequip_timer 2
execute as @a[scores={geode_totem_unequip_timer=1}] at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids run data remove entity @n[type=marker,tag=player_marker] data.geode_totem