scoreboard players reset @s geode_arbitrary_ids
summon marker
loot spawn ~ ~ ~ loot geode:player_head
execute as @n[type=marker] run tag @s add player_marker
execute as @n[type=marker,tag=player_marker] run data modify entity @s data."geode_player" set from entity @n[type=item] Item.components."minecraft:profile".name
execute as @n[type=marker,tag=player_marker] run data modify entity @s Tags append from entity @s data."geode_player"
scoreboard players add i geode_arbitrary_ids 1
scoreboard players operation @s geode_arbitrary_ids += i geode_arbitrary_ids
scoreboard players operation @n[type=marker,tag=player_marker] geode_arbitrary_ids += i geode_arbitrary_ids
kill @n[type=item]