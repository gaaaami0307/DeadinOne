
scoreboard players set @e[scores={e_marking=1}] e_marking2 0
scoreboard players remove @e[scores={e_marking=1..}] e_marking 1
scoreboard players add @e[scores={e_marking=1..}] e_marking2 1
execute as @e[scores={e_marking2=1}] at @s run particle dio:marking ~~3~
execute as @e[scores={e_marking2=11}] at @s run particle dio:marking ~~3~
execute as @e[scores={e_marking2=1}] at @s run playsound note.pling @a ~~~ 0.5 1.8
scoreboard players set @e[scores={e_marking2=20..}] e_marking2 0
scoreboard players remove @e[scores={e_overdrive=1..}] e_overdrive 1
execute as @e[scores={e_overdrive=1..}] at @s positioned ^^^0.5 run particle minecraft:blue_flame_particle ~~1~
