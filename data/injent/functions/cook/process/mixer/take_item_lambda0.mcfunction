# if structure has work then cancel taking item
execute if entity @e[tag=i_current_interaction,limit=1,tag=i_work] run return 0

#checks if item in player hand can be mixed else cancels operation
execute at @e[type=interaction,tag=i_current_interaction] unless entity @e[type=minecraft:item_display,nbt=!{item:{tag:{CanMix:1b}}},distance=..1] run return 0
execute if entity @s[nbt={SelectedItem:{tag:{CanMix:1b}}}] run function injent:cook/process/mixer/render_item

execute unless entity @s[nbt={SelectedItem:{tag:{CanMix:1b}}}] run return 0

#decrease item count in player hand
execute store result score @s i_util run data get entity @s SelectedItem.Count
scoreboard players remove @s i_util 1
item modify entity @s weapon.mainhand injent:set_count_from_score