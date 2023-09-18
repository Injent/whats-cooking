execute if data entity @s Item if entity @s[nbt=!{Item:{tag:{CanFry:1b}}}] run function injent:cook/process/furnace/drop
execute if entity @s[nbt={Item:{tag:{CanFry:1b}}}] run function injent:cook/process/furnace/work
execute unless data entity @s[scores={i_proccess=0..}] Item run function injent:cook/process/furnace/abort