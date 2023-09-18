execute if entity @s[nbt={item:{tag:{Wheat:1b}}}] run data modify entity @e[tag=i_temp2,limit=1] data.input append value wheat
execute if entity @s[nbt={item:{tag:{Egg:1b}}}] run data modify entity @e[tag=i_temp2,limit=1] data.input append value egg
execute if entity @s[nbt={item:{id:"minecraft:air"}}] run data modify entity @e[tag=i_temp2,limit=1] data.input append value empty