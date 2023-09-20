execute if entity @s[nbt={data:{input:[Carrot,Potato,Chicken]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:chicken_soup"}

execute if entity @s[tag=!i_successful_recipe] run loot spawn ~ ~0.5 ~ loot entities/creeper
tag @s remove i_successful_recipe