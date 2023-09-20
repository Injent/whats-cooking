$execute if entity @s[tag=i_furnace] run function injent:cook/structures/furnace {"rotation":"$(rotation)"}
$execute if entity @s[tag=i_mixer] run function injent:cook/structures/mixer {"rotation":"$(rotation)"}
$execute if entity @s[tag=i_cooking_pot] run function injent:cook/structures/cooking_pot {"rotation":"$(rotation)"}

kill @s