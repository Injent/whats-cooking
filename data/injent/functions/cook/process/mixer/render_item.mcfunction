tag @s add i_temp1
execute positioned as @e[tag=i_current_interaction,limit=1] as @e[type=minecraft:item_display,nbt=!{item:{tag:{CanMix:1b}}},sort=random,limit=1,distance=..1] run function injent:cook/process/mixer/render_item_lambda0
tag @s remove i_temp1