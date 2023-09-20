execute if entity @s[tag=i_south] run setblock ~ ~2 ~1 minecraft:bamboo_button[face=wall,facing=south,powered=false]
execute if entity @s[tag=i_west] run setblock ~-1 ~2 ~ minecraft:bamboo_button[face=wall,facing=west,powered=false]
execute if entity @s[tag=i_north] run setblock ~ ~2 ~-1 minecraft:bamboo_button[face=wall,facing=north,powered=false]
execute if entity @s[tag=i_east] run setblock ~1 ~2 ~ minecraft:bamboo_button[face=wall,facing=east,powered=false]

execute if entity @s[tag=i_south] run summon marker ~0.5 ~2 ~1.5 {Tags:["i_mixer_button","i_mixer_part","i_temp1"]}
execute if entity @s[tag=i_west] run summon marker ~-0.5 ~2 ~0.5 {Tags:["i_mixer_button","i_mixer_part","i_temp1"]}
execute if entity @s[tag=i_north] run summon marker ~0.5 ~2 ~-0.5 {Tags:["i_mixer_button","i_mixer_part","i_temp1"]}
execute if entity @s[tag=i_east] run summon marker ~0.5 ~2 ~0.5 {Tags:["i_mixer_button","i_mixer_part","i_temp1"]}