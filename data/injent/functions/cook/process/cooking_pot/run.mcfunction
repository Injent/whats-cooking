execute on target run function injent:cook/process/cooking_pot/take_item
execute on attacker as @e[type=interaction] at @s if data entity @s attack run function injent:cook/process/cooking_pot/drop
execute at @s positioned as @e[type=marker,tag=i_mixer_button,sort=nearest,limit=1] if block ~ ~ ~ bamboo_button[powered=true] run tag @s add i_work
execute if entity @s[tag=i_work] run function injent:cook/process/cooking_pot/work