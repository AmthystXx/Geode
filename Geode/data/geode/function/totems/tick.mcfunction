function geode:arbitrary_player_data/get_id

execute if predicate geode:totems/mainhand run scoreboard players set @s geode_totem_mainhand_switch_timer 0
execute if predicate geode:totems/offhand run scoreboard players set @s geode_totem_offhand_switch_timer 0

scoreboard players add @s[scores={geode_totem_timer=0}] geode_totem_timer 1
execute as @s[scores={geode_totem_timer=1}] run function geode:totems/apply_effects with storage geode:arbitrary_player_data temp

scoreboard players add @s[scores={geode_totem_mainhand_switch_timer=0}] geode_totem_mainhand_switch_timer 1
scoreboard players add @s[scores={geode_totem_offhand_switch_timer=0}] geode_totem_offhand_switch_timer 1

function geode:totems/set_totem with storage geode:arbitrary_player_data temp