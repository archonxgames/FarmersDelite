recipe take @s farmersdelite:fried_egg_from_campfire_cooking
advancement revoke @s only farmersdelite:fried_egg_from_campfire_cooking

# Summon item with temporary tag, custom identifier for later (in tag key), a useless enchant just for the pretty glint, a modifier to hide the enchantment and a pretty name.
summon item ~ ~ ~ {Tags:["fried_egg_tmp"],Item:{id:"minecraft:baked_potato",Count:1,tag:{CustomModelData:4933035,display:{Name:'[{"text":"Fried Egg","italic":false}]'}}}}
# Store the amount of books in the Count key of the new item. This allows crafting multiple items at once.
execute store result entity @e[tag=fried_egg_tmp,limit=1] Item.Count byte 1 run clear @s minecraft:snowball
tag @e[tag=fried_egg_tmp] remove fried_egg_tmp