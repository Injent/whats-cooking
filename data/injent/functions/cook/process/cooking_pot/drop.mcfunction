execute store result score ._i_cooking_pot_has_items i_util run function injent:cook/process/cooking_pot/has_items
execute if score ._i_cooking_pot_has_items i_util matches 0 run return 0

tag @s add i_temp4
data remove entity @s attack
scoreboard players reset @s i_proccess
tag @s remove i_work

execute as @e[tag=i_cooking_pot_input] if score @s i_id = @e[tag=i_temp4,limit=1] i_id positioned as @s align xyz positioned ~0.5 ~ ~0.5 run function injent:cook/process/shared/set_item_from
execute as @e[tag=i_item] if score @s i_id = @e[tag=i_temp4,limit=1] i_id run data remove entity @s item
playsound minecraft:item.bundle.insert block @a ~ ~ ~ 1 0.8 1
setblock ~ ~ ~ cauldron

tag @s remove i_temp4