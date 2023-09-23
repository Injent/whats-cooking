tag @s add i_temp
execute as @e[tag=i_furnace_part] if score @s i_id = @e[tag=i_temp,limit=1] i_id run kill @s
kill @s