#
# fires when soup cooker finished doing its work
#
tag @s remove i_work
scoreboard players reset @s i_proccess

#recipes output
execute positioned as @s run summon marker ~ ~ ~ {Tags:["i_temp2"],data:{input:[]}}
execute positioned as @s as @e[type=item_display,distance=..1.5,limit=3,sort=nearest] run function injent:cook/process/cooking_pot/select_output
execute as @e[type=item_display,tag=i_item,sort=nearest,limit=3] run data remove entity @s item
execute positioned as @s as @e[tag=i_temp2,limit=1] run function injent:cook/process/cooking_pot/output_item
kill @e[tag=i_temp2,limit=1]