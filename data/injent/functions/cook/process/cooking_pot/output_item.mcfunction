execute if entity @s[nbt={data:{input:[Carrot,Potato,Chicken]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/chicken_soup"}
execute if entity @s[nbt={data:{input:[Tomato,Tomato]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/tomato_sauce"}
execute if entity @s[nbt={data:{input:[Fish,TomatoSauce]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/fish_stew"}
execute if entity @s[nbt={data:{input:[RawPasta,MincedBeef]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/pasta_with_meatballs"}
execute if entity @s[nbt={data:{input:[RawPasta,Egg,Carrot]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/noodle_soup"}
execute if entity @s[nbt={data:{input:[Sugar,Beans]}}] run function injent:cook/process/cooking_pot/output_item_lambda0 {"loot":"injent:items/chocolate"}


execute if entity @s[tag=!i_successful_recipe] run loot spawn ~ ~0.5 ~ loot entities/creeper
tag @s remove i_successful_recipe