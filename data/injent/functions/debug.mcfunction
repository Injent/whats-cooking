execute as @e[type=armor_stand,tag=i_furniture_placer] at @s run function injent:cook/structures/controller/placement_controller

execute as @e[tag=i_furniture] at @s run function injent:cook/structures/controller/destroy_controller
