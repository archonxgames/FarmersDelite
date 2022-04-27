# data/<namespace>/functions/tsh/shard_crafted.mcfunction
# As/At: Player who crafted the Treasure Shard
recipe take @s sandbox:item/shard
advancement revoke @s only sandbox:item/shard_crafted

# Summon item with temporary tag, custom identifier for later (in tag key), a useless enchant just for the pretty glint, a modifier to hide the enchantment and a pretty name.
summon item ~ ~ ~ {Tags:["bctsh_tmp"],Item:{id:"minecraft:emerald",Count:1b,tag:{bctsh_shard:1b,Enchantments:[{"id":"minecraft:unbreaking",lvl:1}],HideFlags:1,display:{Name:'{"text":"Treasure Shard","color":"yellow","bold":true,"italic":false}'}}}}
# Store the amount of books in the Count key of the new item. This allows crafting multiple items at once.
execute store result entity @e[tag=bctsh_tmp,limit=1] Item.Count byte 1 run clear @s minecraft:knowledge_book
tag @e[tag=bctsh_tmp] remove bctsh_tmp