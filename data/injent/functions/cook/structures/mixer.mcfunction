execute if entity @e[type=interaction,tag=i_mixer,sort=nearest,limit=1,distance=..0.4] run return 0

setblock ~ ~ ~ cauldron replace
setblock ~ ~2 ~ stripped_cherry_wood

$execute align xyz run summon interaction ~0.5 ~0.30 ~0.5 {width:1.025f,height:0.75f,Tags:["i_furniture","i_mixer","i_$(rotation)","i_temp0"]}
execute as @e[tag=i_temp0,limit=1] run function injent:data/set_id

execute align xyz run summon block_display ~ ~ ~ {Tags:["i_mixer_input","i_temp1","i_mixer_part"],Passengers:[{Tags:["i_item_0","i_is_empty","i_item","i_temp1","i_mixer_part"],id:"minecraft:item_display",item_display:"none",item:{id:"minecraft:air",Count:1b},transformation:[0.1121f,0.2500f,-0.4183f,0.6250f,-0.0647f,0.4330f,0.2415f,0.7450f,0.4830f,0.0000f,0.1294f,0.3705f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["i_item_1","i_is_empty","i_item","i_temp1","i_mixer_part"],id:"minecraft:item_display",item_display:"none",item:{id:"minecraft:air",Count:1b},transformation:[-0.0647f,-0.4330f,-0.2415f,0.3125f,-0.1121f,0.2500f,-0.4183f,0.6825f,0.4830f,-0.0000f,-0.1294f,0.5580f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["i_item_2","i_is_empty","i_item","i_temp1","i_mixer_part"],id:"minecraft:item_display",item_display:"none",item:{id:"minecraft:air",Count:1b},transformation:[0.1250f,0.4330f,0.2165f,0.6875f,-0.2165f,0.2500f,-0.3750f,0.6825f,-0.4330f,0.0000f,0.2500f,0.6830f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute align xyz run summon block_display ~ ~1 ~ {shadow_radius:0f,shadow_strength:0f,Tags:["i_temp1","i_mixer_part"],block_state:{Name:"minecraft:lightning_rod",Properties:{facing:"down"}}}
execute as @e[tag=i_temp0,limit=1] at @s align xyz run function injent:cook/structures/mixer_lambda0

execute as @e[tag=i_temp1] run function injent:data/assing_to_last_id

tag @e[tag=i_temp0,limit=1] remove i_temp0
tag @e[tag=i_temp1] remove i_temp1