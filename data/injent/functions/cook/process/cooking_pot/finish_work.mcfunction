#
# fires when soup cooker finished doing its work
#
tag @s remove i_work
scoreboard players reset @s i_proccess

#recipes output
summon marker ~ ~ ~ {Tags:["i_temp2"],data:{input:[]}}
execute as @e[type=item_display,distance=..1.5,limit=3,sort=nearest] run function injent:cook/process/cooking_pot/select_output
execute as @e[type=item_display,tag=i_item,sort=nearest,limit=3] run data remove entity @s item
execute if block ~ ~ ~ water_cauldron run setblock ~ ~ ~ cauldron
function injent:cook/process/cooking_pot/turn_off
execute as @e[tag=i_temp2,limit=1] run function injent:cook/process/cooking_pot/output_item
kill @e[tag=i_temp2,limit=1]