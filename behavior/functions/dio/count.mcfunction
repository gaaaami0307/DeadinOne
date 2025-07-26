execute as @a[scores={ac1=1}] at @s run playsound note.hat @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac1=1..}] ac1 1
execute as @a[scores={ac2=1}] at @s run playsound note.bit @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac2=1..}] ac2 1
execute as @a[scores={ac3=1}] at @s run playsound note.bass @s ~~~ 1 0.5
scoreboard players remove @a[scores={ac3=1..}] ac3 1
scoreboard players add @a[tag=!t:moving] count_stop 1
scoreboard players set @a[tag=t:moving] count_stop 0
scoreboard players add @a[tag=t:moving] count_move 1
scoreboard players set @a[tag=!t:moving] count_move 0
execute as @a[scores={park_cooldown=1}] at @s run playsound block.grindstone.use @s ~~~ 1 1
execute as @a[scores={park_cooldown=1}] at @s run tellraw @s {"rawtext":[{"text":"§dパークのクールダウン　完了"}]}
scoreboard players remove @a[scores={park_cooldown=1..}] park_cooldown 1