$setblock ~ ~ ~ smoker[facing=$(rotation)]{Lock:"true"} replace

summon item_frame ~ ~1 ~ {Silent:1b,Facing:1b,Tags:["i_furniture","i_furnace"]}
execute if block ~ ~ ~ smoker[facing=south] run data merge entity @e[type=item_frame,tag=i_furnace,distance=..0.5,limit=1] {ItemRotation:0b}
execute if block ~ ~ ~ smoker[facing=west] run data merge entity @e[type=item_frame,tag=i_furnace,distance=..0.5,limit=1] {ItemRotation:2b}
execute if block ~ ~ ~ smoker[facing=north] run data merge entity @e[type=item_frame,tag=i_furnace,distance=..0.5,limit=1] {ItemRotation:4b}
execute if block ~ ~ ~ smoker[facing=east] run data merge entity @e[type=item_frame,tag=i_furnace,distance=..0.5,limit=1] {ItemRotation:6b}