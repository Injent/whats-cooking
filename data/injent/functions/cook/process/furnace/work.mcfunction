scoreboard players add @s i_proccess 10

particle smoke ~ ~ ~ 0 0 0 0 1 normal @a[distance=..5]

data merge entity @s[nbt={Invulnerable:1b}] {Invulnerable:0b}

execute if score @s i_proccess matches 2000.. run function injent:cook/process/furnace/finish_work