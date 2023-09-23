$setblock ~ ~ ~ smoker[facing=$(rotation)]{Lock:"true"} replace

summon item_frame ~ ~1 ~ {Silent:1b,Facing:1b,Tags:["i_furniture","i_furnace","i_temp0"]}
execute as @e[tag=i_temp0,limit=1] run function injent:data/set_id

summon block_display ~-0.5 ~1 ~-0.5 {Tags:["i_temp1","i_furnace_part"],Passengers:[{Tags:["i_temp1","i_furnace_part"],id:"minecraft:block_display",block_state:{Name:"minecraft:rail",Properties:{shape:"north_south"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute as @e[tag=i_temp0,limit=1] run function injent:cook/structures/furnace_lambda0
execute as @e[tag=i_temp1] run function injent:data/assing_to_last_id

tag @e[tag=i_temp0,limit=1] remove i_temp0
tag @e[tag=i_temp1] remove i_temp1