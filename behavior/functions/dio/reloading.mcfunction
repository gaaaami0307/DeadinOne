#リロード中
scoreboard players remove @a[scores={reload=1..}] reload 1
scoreboard players add @a[scores={reload=1..}] reloadT 1
execute as @a[scores={reloadT=20}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reloadT=10}] at @s run playsound random.click @a ~~~ 1 1
execute as @a[scores={reload=2..}] at @s run scoreboard players remove @s[scores={park=3}] reload 1
execute as @a[scores={reload=20..}] as @s[scores={park=9}] at @s run effect @s speed 1 2
execute as @a[scores={reload=20..}] as @s[scores={park=9}] at @s run effect @s weakness 1 2
execute as @a[scores={reloadT=20..}] as @s[scores={park=9}] at @s run effect @s regeneration 1 2
scoreboard players set @a[scores={reloadT=20..}] reloadT 0
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s run playsound open.wooden_trapdoor @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s positioned ^^^1 run particle minecraft:basic_crit_particle ~~2~
execute as @a[scores={reload=1}] as @s[scores={park=10}] at @s as @a[r=15,rm=0.1] at @s run playsound random.glass @a ~~~ 1 1.5
execute as @a[scores={reload=1}] as @s[scores={park=10}] at @s run camera @a[r=15,rm=0.1] fade time 0.1 1 2 color 255 255 255
scoreboard players set @a[scores={reload=1}] arrow 5
scoreboard players set @a[scores={reload=1}] reloadT 0
execute as @a[scores={reload=1}] at @s run scoreboard players add @s[scores={park=6}] arrow 2
execute as @a[scores={reload=1}] at @s run scoreboard players operation @s arrow += @s sub_reload_ammo
scoreboard players set @a[scores={reload=1}] sub_reload_ammo 0