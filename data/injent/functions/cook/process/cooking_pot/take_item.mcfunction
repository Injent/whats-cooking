#identify current interaction entity with tag
execute as @e[type=interaction] if data entity @s interaction run tag @s add i_current_interaction

function injent:cook/process/cooking_pot/take_item_lambda0
data remove entity @e[type=interaction,tag=i_current_interaction,limit=1] interaction

tag @e[tag=i_current_interaction,limit=1] remove i_current_interaction