$execute as @s[scores={geode_totem_mainhand_switch_timer=1}] run data modify storage geode:arbitrary_player_data $(id).totem_id set from entity @s SelectedItem.components."minecraft:custom_data".totem_id
$execute as @s[scores={geode_totem_offhand_switch_timer=1}] run data modify storage geode:arbitrary_player_data $(id).totem_id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".totem_id

scoreboard players reset @s geode_totem_mainhand_switch_timer
scoreboard players reset @s geode_totem_offhand_switch_timer