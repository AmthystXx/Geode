$execute as @n[type=minecraft:fishing_bobber] at @s run summon item_display ~ ~ ~ {billboard:"center",Tags:["geode.custom_bobber"],item:{id:"$(bobber_item)",count:1,components:{"minecraft:custom_model_data":$(bobber_custom_model_data)}}}
ride @n[type=minecraft:item_display,tag=geode.custom_bobber] mount @n[type=minecraft:fishing_bobber]