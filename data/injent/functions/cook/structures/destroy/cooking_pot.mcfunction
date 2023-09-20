tag @s add i_id_tag
execute as @e[tag=i_cooking_pot_design] if score @s i_id = @e[tag=i_id_tag,limit=1] i_id run kill @s
kill @s