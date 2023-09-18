execute if entity @s[nbt={data:{input:[egg,wheat,empty]}}] run function injent:cook/process/mixer/spawn_output_lambda0 {"loot":"injent:dough"}

execute if entity @s[tag=!i_successful_recipe] run loot spawn ~ ~0.5 ~ loot entities/creeper
tag @s remove i_successful_recipe