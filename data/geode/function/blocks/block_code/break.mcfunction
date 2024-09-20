$loot spawn ~ ~ ~ loot $(pack_name):$(block)
$execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={OnGround:0b,Age:0s,Item:{id:"minecraft:$(base_block)"}}] run kill @s
kill @s