execute run kill @e[type=item,nbt={Item:{id:"minecraft:stone_sword",tag:{diamond_knife:1b},Count:1b}},sort=nearest,limit=1]
execute run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},sort=nearest,limit=1]

particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0 10 normal
playsound block.smithing_table.use block @a ~ ~ ~ 1
summon item ~0.5 ~0.1 ~0.5 {PickupDelay:20,Item:{id:"minecraft:stone_sword",Count:1,tag:{CustomModelData:1383093,display:{Name:'[{"text":"Netherite Knife","italic":false}]'}}}}