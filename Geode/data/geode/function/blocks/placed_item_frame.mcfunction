advancement revoke @s only geode:blocks/placed_item_frame
execute as @e[tag=geode.item_frame_block,distance=..10] at @s run function geode:blocks/block_code/place with entity @s Item.components.minecraft:custom_data