$setblock ~ ~ ~ $(base_block)
$summon item_display ~ ~ ~ {Tags:["$(pack_name).$(block)","geode.custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[$(scalex)f,$(scaley)f,$(scalez)f]},item:{id:"minecraft:item_frame",count:1,components:{"minecraft:custom_model_data":$(custom_model_data),"minecraft:custom_data":{pack_name:"$(pack_name)",block:"$(block)",base_block:"$(base_block)"}}}}
$data modify entity @n[type=item_display,distance=..1,tag=geode.custom_block,tag=$(pack_name).$(block)] item.components.minecraft:custom_data set from entity @s Item.components.minecraft:custom_data
kill @s