execute as @e[type=minecraft:bat,tag=plitka] at @s if block ~ ~ ~ air unless entity @e[type=minecraft:armor_stand,distance=..3,tag=plitka] run setblock ~ ~ ~ minecraft:spruce_pressure_plate

#execute as @e[type=minecraft:bat,tag=plitka] at @s unless entity @e[type=minecraft:armor_stand,distance=..3,tag=plitka] run summon minecraft:armor_stand ~ ~-1.08 ~0.75 {NoGravity:1b,Tags:["plitka"],Marker:1b,Invisible:1b,Pose:{Head:[270f,0f,0f]}}

execute as @e[type=minecraft:bat,tag=plitka] at @s unless entity @e[type=minecraft:armor_stand,distance=..3,tag=plitka] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["plitkamarker"],Marker:1b,Invisible:1b}

execute as @e[type=minecraft:armor_stand,tag=plitkamarker] at @s unless entity @e[type=minecraft:villager,distance=..3,tag=plitka] if entity @a[distance=..2.1] run summon minecraft:villager ~ ~-1.8 ~  {VillagerData:{type:desert,profession:nitwit,level:1},Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags:["plitka"],ActiveEffects:[{Id:14,Duration:100000,Ambient:1b,ShowParticles:0b}]}

execute as @e[type=minecraft:bat,tag=plitka] at @s run tp @s ~ ~-1000 ~





execute as @a[scores={PlitkaTolder=1..}] at @s if predicate farmersde:selectitem-accept if entity @e[type=minecraft:villager,tag=plitka,distance=..2] run function farmersde:select-item-cheker
#item replace entity @e[type=minecraft:armor_stand,tag=plitka,distance=..2,limit=1] armor.head from entity @s weapon.mainhand

execute as @a[scores={PlitkaTolder=1..}] at @s run scoreboard players set @s PlitkaTolder 0
execute as @e[type=minecraft:armor_stand,tag=plitka] at @s if block ~ ~2 ~-1 air run kill @s
execute as @e[type=minecraft:armor_stand,tag=plitkamarker] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=minecraft:armor_stand,tag=test] at @s if block ~ ~1 ~ air run kill @s
execute as @e[type=minecraft:villager,tag=plitka] at @s if block ~ ~2 ~ air run tp @s ~ ~-1000 ~
execute as @e[type=minecraft:villager,tag=plitka] at @s unless entity @a[distance=..2] run tp @s ~ ~-1000 ~