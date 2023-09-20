$setblock ~ ~ ~ smoker[facing=$(rotation)]{Lock:"true"} replace

summon item_frame ~ ~1 ~ {Silent:1b,Facing:1b,Tags:["i_furniture","i_furnace","i_temp"]}
execute as @e[tag=i_temp,limit=1] run function injent:cook/structures/furnace_lambda0

tag @e[tag=i_temp,limit=1] remove i_temp