execute as @e[type=armor_stand,limit=1,tag=i_furniture] at @s run function injent:cook/structures/controller/placement_controller

execute as @e[tag=i_furniture] at @s run function injent:cook/structures/controller/destroy_controller

function injent:game/runtime