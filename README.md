# Whats Cooking
Competetive Minecraft Minigame (Cafe Simulator)

## Project Structure

### Testing and editing
- Give a furnace ```/function injent:items/structures/furnace```
- Give a mixer ```/function injent:items/structures/mixer```

### Special Tags
- Apply the ```CanMix:1b``` tag to any item to be able to put it in the mixer by right-clicking on it.
- Apply the ```CanFry:1b``` tag to any item to be able to use as ingredient in furnace.

## Contribution Rules

### Naming
- Use snake case in tag names, scoreboards, datapack files together with a prefix consisting of 1 of any letter not used in the created project.

  Example: ```tag=first_used```
- Use camel case in writing nbt tags.

  Example: ```nbt={ItemCost:12b,Meta:"something"}```
- Write names clearly, without abbreviations, so that they reflect the meaning.

  Good example: ```a_was_interacted```
  
  Bad example: ```a_int```
- It is allowed to use inaccurate name wording if it is within one function and serves as an identifier.

  Example:
  ```
  execute as @e[type=minecraft:interaction] if data entity @s interaction run tag @s add a_temp0
  # some operations with entity with tag a_temp0
  tag @e[tag=a_temp0,limit=1] remove a_temp0
  ```

### Clean Code
- Write comments in the first lines of the file and below if necessary, explaining how the code works.
- Use your namespace to avoid conflicts.
- Register all scoreboard objectives in the initialization file.

### Optimization
- It is recommended to use storage or scoreboard instead of tags if possible. This has a positive effect on optimization.
- Write selectors with limit and type to optimize selection of entities in runtime.

  Example: ```@e[type=minecraft:pig,tag=a_some_tag,limit=1]```
- Use setblock/fill modes to optimize block placement.

  Example: ```fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:stone replace```
