#リロード中
scoreboard players remove @a[scores={reload=1..}] reload 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s positioned ^^^1 run particle minecraft:basic_crit_particle ~~2~
execute as @a[scores={reload=60}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=50}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=40}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=30}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=20}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=10}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=60}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
scoreboard players set @a[scores={reload=1}] arrow 5