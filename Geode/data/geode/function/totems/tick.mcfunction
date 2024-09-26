execute as @a if predicate geode:totems/mainhand run scoreboard players set @s geode_totem_mainhand_switch_timer 0
execute as @a if predicate geode:totems/offhand run scoreboard players set @s geode_totem_offhand_switch_timer 0

scoreboard players add @a[scores={geode_totem_timer=0}] geode_totem_timer 1
execute as @a[scores={geode_totem_timer=1}] at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids run function geode:totems/apply_effects with entity @n[type=marker,tag=player_marker] data

scoreboard players add @a[scores={geode_totem_mainhand_switch_timer=0}] geode_totem_mainhand_switch_timer 1
execute as @a[scores={geode_totem_mainhand_switch_timer=1}] at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids run data modify entity @n[type=marker,tag=player_marker] data.id set from entity @s SelectedItem.components."minecraft:custom_data".id
execute as @a[scores={geode_totem_mainhand_switch_timer=1}] run scoreboard players reset @s geode_totem_mainhand_switch_timer

scoreboard players add @a[scores={geode_totem_offhand_switch_timer=0}] geode_totem_offhand_switch_timer 1
execute as @a[scores={geode_totem_offhand_switch_timer=1}] at @s if score @s geode_arbitrary_ids = @n[type=marker,tag=player_marker] geode_arbitrary_ids run data modify entity @n[type=marker,tag=player_marker] data.id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".id
execute as @a[scores={geode_totem_offhand_switch_timer=1}] run scoreboard players reset @s geode_totem_offhand_switch_timer