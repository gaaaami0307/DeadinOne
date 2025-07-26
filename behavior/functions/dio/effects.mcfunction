
scoreboard players set @e[scores={e_marking=1}] e_marking2 0
scoreboard players remove @e[scores={e_marking=1..}] e_marking 1
scoreboard players add @e[scores={e_marking=1..}] e_marking2 1
execute as @e[scores={e_marking2=10..}] at @s run particle dio:marking ~~3~
execute as @e[scores={e_marking2=10..}] at @s run playsound note.pling @a ~~~ 0.5 1.8
scoreboard players set @e[scores={e_marking2=10..}] e_marking2 0
scoreboard players remove @e[scores={e_overdrive=1..}] e_overdrive 1
