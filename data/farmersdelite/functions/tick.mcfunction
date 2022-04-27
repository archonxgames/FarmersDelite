# data/<namespace>/functions/tsh/tick.mcfunction
# As/At: Server

execute as @e[type=item,nbt={Item:{tag:{diamond_knife:1b}}},predicate=farmersdelite:smithing_below] at @s run function farmersdelite:crafting/smithing/netherite_knife/check_ingredients