execute as @a[scores={job=3},tag=powerskill] as @s[scores={ap=..49}] at @s run tellraw @s { "rawtext": [{"text":"§4APが50必要"}] }
execute as @a[scores={job=3},tag=powerskill] as @s[scores={ap=..49}] at @s run tag @s remove powerskill
execute as @a[scores={job=3},tag=powerskill] at @s run structure load job3_power ~~~ 0_degrees none true false false
execute as @a[scores={job=3},tag=powerskill] at @s run scoreboard players add @s arrow 3
execute as @a[scores={job=3},tag=powerskill] at @s run scoreboard players remove @s ap 50
execute as @a[scores={job=3},tag=powerskill] at @s run tag @s remove powerskill
