data remove entity @s attack
scoreboard players reset @s i_proccess
tag @s remove i_work

execute as @e[type=block_display,tag=i_mixer_input,sort=nearest,limit=1] positioned as @s align xyz positioned ~0.5 ~ ~0.5 run function injent:cook/process/mixer/set_item_from

execute as @e[type=item_display,tag=i_item,sort=nearest,limit=3] run data remove entity @s item
playsound minecraft:item.bundle.insert block @a ~ ~ ~ 1 0.8 1