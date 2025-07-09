execute as @a[scores={ac1=1}] at @s run playsound note.hat @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac1=1..}] ac1 1
execute as @a[scores={ac2=1}] at @s run playsound note.bit @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac2=1..}] ac2 1
execute as @a[scores={ac3=1}] at @s run playsound note.bass @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac3=1..}] ac3 1