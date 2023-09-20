tag @s add i_id_tag
execute as @e[tag=i_mixer_part] if score @s i_id = @e[tag=i_id_tag,limit=1] i_id run kill @s
kill @s
setblock ~ ~2 ~ air replace