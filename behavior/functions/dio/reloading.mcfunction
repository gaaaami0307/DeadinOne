#リロード中
scoreboard players remove @a[scores={reload=1..}] reload 1
scoreboard players set @a[scores={reload=60}] arrow 0
execute as @a[scores={reload=60}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
execute as @a[scores={reload=60}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=50}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=40}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=30}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=20}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=10}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=2..}] at @s run scoreboard players remove @s[scores={park=3}] reload 1
execute as @a[scores={reload=20..}] as @s[scores={park=9}] at @s run effect @s speed 1 2
execute as @a[scores={reload=20..}] as @s[scores={park=9}] at @s run effect @s weakness 1 2
execute as @a[scores={reload=20..}] as @s[scores={park=9}] at @s run effect @s regeneration 1 0
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s positioned ^^^1 run particle minecraft:basic_crit_particle ~~2~
scoreboard players set @a[scores={reload=1}] arrow 5
execute as @a[scores={reload=1}] at @s run scoreboard players add @s[scores={park=6}] arrow 2