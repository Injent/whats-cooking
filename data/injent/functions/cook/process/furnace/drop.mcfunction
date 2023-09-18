summon item ~ ~0.25 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["i_temp4"]}
data modify entity @e[tag=i_temp4,limit=1] Item set from entity @s Item
tag @e[tag=i_temp4,limit=1] remove i_temp4
data remove entity @s Item.id