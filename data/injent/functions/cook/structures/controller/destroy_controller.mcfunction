execute if entity @s[tag=i_furnace] if block ~ ~-1 ~ minecraft:air run kill @s
execute if entity @s[tag=i_mixer] if block ~ ~ ~ minecraft:air run function injent:cook/structures/destroy/mixer