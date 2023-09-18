data modify entity @s item set from entity @p[tag=i_temp1] SelectedItem
data merge entity @s {item:{Count:1b}}
playsound minecraft:item.bundle.drop_contents block @a ~ ~ ~ 1 1 1