advancement revoke @s only blockcore:placed_item_frame
execute as @e[tag=blockcore.item_frame_block,distance=..10] at @s run function blockcore:block_code/place with entity @s Item.components.minecraft:custom_data