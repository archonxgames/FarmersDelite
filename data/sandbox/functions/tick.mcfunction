# data/<namespace>/functions/tsh/tick.mcfunction
# As/At: Server
# For full block containers:
execute as @e[type=item,nbt={Item:{tag:{bctsh_shard:1b}}},predicate=sandbox:container_below] at @s run function sandbox:fill
# Shifting the location before testing the predicate to account for non-full blocks (chests):
execute as @e[type=item,nbt={Item:{tag:{bctsh_shard:1b}}}] at @s positioned ~ ~1 ~ if predicate sandbox:container_below run function sandbox:fill