tellraw @a {"text": "Ingredients are present!"}
tag @s add nkf.ingredient
summon item ~ ~ ~ {Item:{id:"minecraft:stone_sword",Count:1,tag:{CustomModelData:1383093,display:{Name:'[{"text":"Netherite Knife","italic":false}]'}}}}
kill @e[tag=nkf.ingredient]