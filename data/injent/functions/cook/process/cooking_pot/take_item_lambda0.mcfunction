# if structure has work then cancel taking item
execute if entity @e[tag=i_current_interaction,limit=1,tag=i_work] run return 0
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] positioned as @e[tag=i_current_interaction,limit=1] if block ~ ~ ~ cauldron run return 0

#checks if item in player hand can be mixed else cancels operation
execute if entity @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] positioned as @e[tag=i_current_interaction,limit=1] run function injent:cook/process/cooking_pot/fill_water
execute at @e[type=interaction,tag=i_current_interaction,limit=1] unless entity @e[type=minecraft:item_display,nbt=!{item:{tag:{CanBoil:1b}}},distance=..1] run return 0
execute if entity @s[nbt={SelectedItem:{tag:{CanBoil:1b}}}] run function injent:cook/process/cooking_pot/add_item

execute unless entity @s[nbt={SelectedItem:{tag:{CanBoil:1b}}}] run return 0

#decrease item count in player hand
execute store result score @s i_util run data get entity @s SelectedItem.Count
scoreboard players remove @s i_util 1
item modify entity @s weapon.mainhand injent:set_count_from_score