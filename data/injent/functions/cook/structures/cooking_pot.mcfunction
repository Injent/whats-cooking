execute if entity @e[type=marker,tag=i_cooking_pot,sort=nearest,limit=1,distance=..0.5] run return 0
setblock ~ ~ ~ cauldron replace

$summon marker ~ ~0.5 ~ {Tags:["i_furniture","i_cooking_pot","$(rotation)","i_temp0"]}
execute as @e[tag=i_temp0,limit=1] run function injent:cook/structures/cooking_pot_lambda0

summon block_display ~-0.5 ~ ~-0.5 {Tags:["i_cooking_pot_design","i_temp1","i_cooking_pot_input"],Passengers:[{id:"minecraft:item_display",Tags:["i_cooking_pot_design","i_item_0","i_item","i_temp1"],item:{id:"minecraft:air",Count:1},item_display:"none",transformation:[0.5000f,0.0000f,0.0000f,0.3125f,0.0000f,0.0500f,0.4975f,0.7500f,0.0000f,-0.4975f,0.0500f,0.3125f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:item_display",Tags:["i_cooking_pot_design","i_item_1","i_item","i_temp1"],item:{id:"minecraft:air",Count:1},item_display:"none",transformation:[0.4976f,0.0000f,0.0485f,0.3750f,-0.0485f,0.0000f,0.4976f,0.7500f,0.0000f,-0.5000f,0.0000f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:item_display",Tags:["i_cooking_pot_design","i_item_2","i_item","i_temp1"],item:{id:"minecraft:air",Count:1},item_display:"none",transformation:[0.4996f,-0.0000f,-0.0187f,0.6595f,0.0187f,0.0000f,0.4996f,0.7500f,-0.0000f,-0.5000f,0.0000f,0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute align xyz run summon interaction ~0.5 ~0.30 ~0.5 {width:1.025f,height:0.75f,Tags:["i_cooking_pot_hitbox","i_cooking_pot_design","i_temp1"]}

execute as @e[tag=i_temp1] run function injent:data/assing_to_last_id

tag @e[tag=i_temp0,limit=1] remove i_temp0
tag @e[tag=i_temp1] remove i_temp1