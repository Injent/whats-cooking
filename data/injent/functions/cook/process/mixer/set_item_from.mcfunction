summon item ~ ~0.5 ~ {Tags:["i_item_0"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=i_item_0,sort=nearest,limit=1] Item set from entity @s Passengers[0].item
summon item ~ ~0.5 ~ {Tags:["i_item_1"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=i_item_1,sort=nearest,limit=1] Item set from entity @s Passengers[1].item
summon item ~ ~0.5 ~ {Tags:["i_item_2"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=i_item_2,sort=nearest,limit=1] Item set from entity @s Passengers[2].item