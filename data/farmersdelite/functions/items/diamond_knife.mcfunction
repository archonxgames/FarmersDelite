recipe take @s farmersdelite:diamond_knife
advancement revoke @s only farmersdelite:diamond_knife

# Summon item with temporary tag, custom identifier for later (in tag key), a useless enchant just for the pretty glint, a modifier to hide the enchantment and a pretty name.
summon item ~ ~ ~ {Tags:["diamond_knife_tmp"],Item:{id:"minecraft:stone_sword",Count:1,tag:{diamond_knife:1b,CustomModelData:1383092,display:{Name:'[{"text":"Diamond Knife","italic":false}]'}}}}
# Store the amount of books in the Count key of the new item. This allows crafting multiple items at once.
execute store result entity @e[tag=diamond_knife_tmp,limit=1] Item.Count byte 1 run clear @s minecraft:knowledge_book
tag @e[tag=diamond_knife_tmp] remove diamond_knife_tmp