tag @s remove i_work
function injent:cook/process/cooking_pot/drop
playsound block.lever.click block @a ~ ~ ~ 1 1 1
data merge block ^ ^ ^1 {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"OFF","color":"red","clickEvent":{"action":"run_command","value":"execute positioned ^ ^ ^-1 as @e[tag=i_cooking_pot_hitbox,limit=1,dx=0,dy=0,dz=0] run function injent:cook/process/cooking_pot/turn_on"}}','{"text":""}','{"text":""}']}}