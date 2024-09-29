effect clear @s regeneration
effect clear @s fire_resistance
effect clear @s absorption

$function geode:totems/run_totem_function with storage geode:arbitrary_player_data $(totem_id)

scoreboard players reset @s geode_totem_timer