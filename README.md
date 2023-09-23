# Whats Cooking
Competetive Minecraft Minigame (Cafe Simulator)

## Project Structure

### Testing and editing
- Give a furnace `/function injent:items/structures/furnace`
- Give a mixer `/function injent:items/structures/mixer`
- Give a soup cooker `/function injent:items/structures/cooking_pot`

### Special Tags
- Apply the `CanMix:1b` tag to any item to be able to put it in the mixer by right-clicking on it.
- Apply the `CanFry:1b` tag to any item to be able to use as ingredient in furnace.
- Apply the `CanBoil:1b` tag to any item to be able to put it in the cooking pot.

### Item List
#### Ingredients
<ol>
  <li>Flour <code>minecraft:candle{type:"Flour",CustomModelData:1}</code></li>
  <li>Apple <code>minecraft:paper{type:"Apple",CanMix:1b,CustomModelData:1}</code></li> 
  <li>Meat <code>minecraft:white_candle{type:"Meat",CustomModelData:1}</code></li>
  <li>Chicken <code>minecraft:paper{type:"Chicken",CanBoil:1b,CanFry:1b,CustomModelData:2}</code></li>
  <li>Bacon <code>minecraft:light_gray_candle{type:"Bacon",CanFry:1b,CustomModelData:1}</code></li>
  <li>Beef Patty <code>minecraft:gray_candle{type:"BeefPatty",CustomModelData:1}</code></li>
  <li>Lettuce <code>minecraft:paper{type:"Lettuce",CustomModelData:3}</code></li>
  <li>Minced Beef <code>minecraft:black_candle{type:"MincedBeef",CanFry:1b,CustomModelData:1}</code></li>
  <li>Onion <code>minecraft:paper{type:"Onion",CanBoil:1b,CustomModelData:4}</code></li>
  <li>Raw Pie Crust <code>minecraft:brown_candle{type:"RawPieCrust",CanFry:1b,CustomModelData:1}</code></li>
  <li>Pie Crust <code>minecraft:paper{type:"PieCrust",CustomModelData:5}</code></li>
  <li>Raw Pasta <code>minecraft:red_candle{type:"RawPasta",CanBoil:1b,CustomModelData:1}</code></li>
  <li>Tomato <code>minecraft:paper{type:"Tomato",CustomModelData:6}</code></li>
  <li>Potato <code>minecraft:orange_candle{type:"Potato",CanBoil:1b,CanFry:1b,CustomModelData:1}</code></li>
  <li>Water Bottle <code>minecraft:paper{type:"Water",CustomModelData:7}</code></li>
  <li>Carrot <code>minecraft:paper{type:"Carrot",CanBoil:1b,CustomModelData:8}</code></li>
  <li>Egg <code>minecraft:paper{type:"Egg",CanFry:1b,CustomModelData:9}</code></li>
  <li>Bread Dough <code>minecraft:yellow_candle{type:"BreadDough"}</code></li>
  <li>Fish <code>minecraft:paper{type:"Fish",CanFry:1b,CanBoil:1b,CustomModelData:10}</code></li>
  <li>Sugar <code>minecraft:paper{type:"Sugar",CustomModelData:11}</code></li>
</ol>

#### Cooked Food
<ol>
  <li>Bread <code>minecraft:paper{type:"Bread",CustomModelData:12}</code></li>
  <li>Apple Juice <code>minecraft:paper{type:"AppleJuice",CustomModelData:13}</code></li>
  <li>Bacon and Egg <code>minecraft:paper{type:"BaconAndEgg",CustomModelData:14}</code></li>
  <li>Chicken Soup <code>minecraft:paper{type:"ChickenSoup",CustomModelData:15}</code></li>
  <li>Fried Bacon <code>minecraft:paper{type:"FriedBacon",CustomModelData:16}</code></li>
  <li>Fish Stew <code>minecraft:paper{type:"FishStew",CustomModelData:17}</code></li>
  <li>Fried Egg <code>minecraft:paper{type:"FriedEgg",CustomModelData:18}</code></li>
  <li>Grilled Fish <code>minecraft:paper{type:"GrilledFish",CustomModelData:19}</code></li>
  <li>Burger <code>minecraft:paper{type:"Burger",CustomModelData:20}</code></li>
  <li>Noodle Soup <code>minecraft:paper{type:"NoodleSoup",CustomModelData:21}</code></li>
  <li>Pasta with Meatballs <code>minecraft:paper{type:"PastaWithMeetballs",CustomModelData:22}</code></li>
  <li>Salad <code>minecraft:paper{type:"Salad",CustomModelData:23}</code></li>
  <li>Stuffed Potato <code>minecraft:paper{type:"StuffedPotato",CustomModelData:24}</code></li>
  <li>Tomato Sauce <code>minecraft:paper{type:"TomatoSauce",CanBoil:1b,CustomModelData:25}</code></li>
  <li>Apple Pie <code>minecraft:paper{type:"ApplePie",CustomModelData:26}</code></li>
  <li>Pancakes with Jam <code>minecraft:paper{type:"Pancakes",CustomModelData:27}</code></li>
  <li>Chicken Pie <code>minecraft:paper{type:"ChickenPie",CustomModelData:28}</code></li>
  <li>Berry Pie <code>minecraft:paper{type:"BerryPie",CustomModelData:29}</code></li>
  <li>Coffee <code>minecraft:paper{type:"Coffee",CustomModelData:30}</code></li>
  <li>Icecream <code>minecraft:paper{type:"Icecream",CustomModelData:31}</code></li>
  <li>Chocolate Icecream <code>minecraft:paper{type:"ChocolateIcecream",CustomModelData:32}</code></li>
  <li>Chocolate Donut <code>minecraft:paper{type:"ChocolateDonut",CustomModelData:33}</code></li>
</ol>

### Recipes Editing
- All furnace recipes declared in [`injent:cook/process/furnace/output_item`](https://github.com/Injent/whats-cooking/blob/main/data/injent/functions/cook/process/furnace/output_item.mcfunction)
- All mixer recipes declared in [`injent:cook/process/mixer/output_item`](https://github.com/Injent/whats-cooking/blob/main/data/injent/functions/cook/process/mixer/output_item.mcfunction)
- All soup cooker recipes declared in [`injent:cook/process/cooking_pot/output_item`](https://github.com/Injent/whats-cooking/blob/main/data/injent/functions/cook/process/cooking_pot/output_item.mcfunction)

## Contribution Rules

### Naming
- Use snake case in tag names, scoreboards, datapack files together with a prefix consisting of 1 of any letter not used in the created project.

  > Example: `tag=first_used`
- Use camel case in writing nbt tags.

  > Example: `nbt={ItemCost:12b,Meta:"something"}`
- Write names clearly, without abbreviations, so that they reflect the meaning.
  If you want to add scoreboard which represents interaction count you should follow this example
  
  > Good example: `a_was_interacted`
  
  > Bad example: `a_int`
- It is allowed to use inaccurate name wording if it is within one function and serves as an identifier.

  > Example:
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

  > Example: ```@e[type=minecraft:pig,tag=a_some_tag,limit=1]```
- Use setblock/fill modes to optimize block placement.

  > Example: ```fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:stone replace```

- Create lambda functions when it needs to execute two or more commands on specific entity
  > Example: ```execute as @e[tag=a_entity,limit=1] run function namespace:this_func_lambda0```
