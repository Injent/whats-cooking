execute if entity @s[y_rotation=-45.01..45] run function injent:cook/structures/controller/furniture_controller {"rotation":"south"}
execute if entity @s[y_rotation=45.01..135] run function injent:cook/structures/controller/furniture_controller {"rotation":"west"}
execute if entity @s[y_rotation=135.01..-135] run function injent:cook/structures/controller/furniture_controller {"rotation":"north"}
execute if entity @s[y_rotation=-135.01..-45] run function injent:cook/structures/controller/furniture_controller {"rotation":"east"}
