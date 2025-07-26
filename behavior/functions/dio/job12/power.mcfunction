execute as @a[scores={job=12},tag=powerskill] as @s[scores={ap=..49}] at @s run tellraw @s { "rawtext": [{"text":"§4APが50必要"}] }
execute as @a[scores={job=12},tag=powerskill] as @s[scores={ap=..49}] at @s run tag @s remove powerskill
execute as @a[scores={job=12},tag=powerskill] at @s run scoreboard players add @s e_overdrive 400
execute as @a[scores={job=12},tag=powerskill] at @s run playsound firework.launch @a ~~~ 1 1.8
execute as @a[scores={job=12},tag=powerskill] at @s run scoreboard players remove @s ap 50
execute as @a[scores={job=12},tag=powerskill] at @s run tag @s remove powerskill