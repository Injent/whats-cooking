tag @s add i_id

execute as @e[tag=i_cooking_pot_input] if score @s i_id = @e[tag=i_id,limit=1] i_id store result score ._i_cooking_pot_has_items i_util run function injent:cook/process/cooking_pot/has_items
tag @s remove i_id
execute if score ._i_cooking_pot_has_items i_util matches 0 run return 0
execute if score ._i_cooking_pot_has_items i_util matches 1.. if block ~ ~ ~ water_cauldron[level=2] run tag @s add i_work
scoreboard players reset ._i_cooking_pot_has_items i_util
execute if entity @s[tag=i_work] run playsound block.lever.click block @a ~ ~ ~ 1 1 1
execute if entity @s[tag=i_work] run data merge block ^ ^ ^1 {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"ON","color":"green","clickEvent":{"action":"run_command","value":"execute positioned ^ ^ ^-1 as @e[tag=i_cooking_pot_hitbox,limit=1,dx=0,dy=0,dz=0] run function injent:cook/process/cooking_pot/turn_off"}}','{"text":""}','{"text":""}']}}