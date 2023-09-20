tag @s remove i_common_id
scoreboard players set .i_total_ids i_id 0
execute as @e[type=!player,scores={i_id=0..},tag=!i_common_id] run scoreboard players add .i_total_ids i_id 1
scoreboard players operation @s i_id = .i_total_ids i_id