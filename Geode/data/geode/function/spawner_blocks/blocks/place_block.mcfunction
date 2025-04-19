$setblock ~ ~ ~ spawner{RequiredPlayerRange:0,SpawnData:{entity:{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:$(item_id),count:1,components:{"minecraft:custom_model_data":$(custom_model_data),"minecraft:custom_data":{"loot_table":"$(loot_table)"}}}]}}} replace
data modify block ~ ~ ~ RequiredPlayerRange set value 0
kill @s