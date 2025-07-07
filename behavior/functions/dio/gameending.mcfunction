scoreboard players remove @a[scores={gameending=1..}] gameending 1
execute as @a[scores={gameending=99}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[scores={gameending=99}] at @s run title @s title FINISH!!!
execute as @a[scores={gameending=99}] at @s run title @s times 5 60 15
execute as @a[scores={gameending=99}] at @s run kill @e[type=!player]
execute as @a[scores={gameending=30}] as @s[tag=kc30] at @s run titleraw @a title { "rawtext": [{"text":"§6"},{"selector":"@p"},{"text":"§6の勝利！！"}] }
execute as @a[scores={gameending=30}] at @s run playsound random.totem @s ~~~ 1 1
execute as @a[scores={gameending=1}] at @s run tag @s remove battle
execute as @a[scores={gameending=1}] at @s run clear @s
execute as @a[scores={gameending=1}] at @s run tp @s -100 -60 0
