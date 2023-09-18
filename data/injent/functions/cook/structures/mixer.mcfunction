setblock ~ ~ ~ cauldron replace
$setblock ~ ~2 ~ waxed_cut_copper_stairs[facing=$(rotation),half=top]

execute align xyz run summon block_display ~ ~ ~ {Tags:["i_mixer_design","i_mixer_input"],Passengers:[{Tags:["i_mixer_design","i_item_0","i_is_empty","i_item"],id:"minecraft:item_display",item_display:"none",item:{id:"air",Count:1b},transformation:[0.1121f,0.2500f,-0.4183f,0.6250f,-0.0647f,0.4330f,0.2415f,0.7450f,0.4830f,0.0000f,0.1294f,0.3705f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["i_mixer_design","i_item_1","i_is_empty","i_item"],id:"minecraft:item_display",item_display:"none",item:{id:"air",Count:1b},transformation:[-0.0647f,-0.4330f,-0.2415f,0.3125f,-0.1121f,0.2500f,-0.4183f,0.6825f,0.4830f,-0.0000f,-0.1294f,0.5580f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["i_mixer_design","i_item_2","i_is_empty","i_item"],id:"minecraft:item_display",item_display:"none",item:{id:"air",Count:1b},transformation:[0.1250f,0.4330f,0.2165f,0.6875f,-0.2165f,0.2500f,-0.3750f,0.6825f,-0.4330f,0.0000f,0.2500f,0.6830f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute align xyz run summon block_display ~ ~1 ~ {shadow_radius:0f,shadow_strength:0f,Tags:["i_mixer_design"],block_state:{Name:"minecraft:lightning_rod",Properties:{facing:"down"}}}
$execute align xyz run summon interaction ~0.5 ~0.30 ~0.5 {width:1.025f,height:0.75f,Tags:["i_furniture","i_mixer","i_$(rotation)"]}
execute if entity @e[type=interaction,tag=i_south,limit=1] run setblock ~ ~2 ~1 minecraft:bamboo_button[face=wall,facing=south,powered=false]
execute if entity @e[type=interaction,tag=i_west,limit=1] run setblock ~-1 ~2 ~ minecraft:bamboo_button[face=wall,facing=west,powered=false]
execute if entity @e[type=interaction,tag=i_north,limit=1] run setblock ~ ~2 ~-1 minecraft:bamboo_button[face=wall,facing=north,powered=false]
execute if entity @e[type=interaction,tag=i_east,limit=1] run setblock ~1 ~2 ~ minecraft:bamboo_button[face=wall,facing=east,powered=false]

execute if entity @e[type=interaction,tag=i_south,limit=1] align xyz run summon marker ~0.5 ~2 ~1.5 {Tags:["i_mixer_button"]}
execute if entity @e[type=interaction,tag=i_west,limit=1] align xyz run summon marker ~-0.5 ~2 ~0.5 {Tags:["i_mixer_button"]}
execute if entity @e[type=interaction,tag=i_north,limit=1] align xyz run summon marker ~0.5 ~2 ~-0.5 {Tags:["i_mixer_button"]}
execute if entity @e[type=interaction,tag=i_east,limit=1] align xyz run summon marker ~0.5 ~2 ~0.5 {Tags:["i_mixer_button"]}

tag @e[type=interaction] remove i_east
tag @e[type=interaction] remove i_west
tag @e[type=interaction] remove i_south
tag @e[type=interaction] remove i_north