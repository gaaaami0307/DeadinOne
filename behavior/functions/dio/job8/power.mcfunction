execute as @a[scores={job=8},tag=powerskill] as @s[scores={ap=..49}] at @s run tellraw @s { "rawtext": [{"text":"§4APが50必要"}] }
execute as @a[scores={job=8},tag=powerskill] as @s[scores={ap=..49}] at @s run tag @s remove powerskill
execute as @a[scores={job=8},tag=powerskill] as @s[scores={skilllevel=5..}] at @s run tellraw @s { "rawtext": [{"text":"§4これ以上強化できない"}] }
execute as @a[scores={job=8},tag=powerskill] as @s[scores={skilllevel=5..}] at @s run tag @s remove powerskill
execute as @a[scores={job=8},tag=powerskill] at @s run scoreboard players add @s skilllevel 1
execute as @a[scores={job=8},tag=powerskill] at @s run tellraw @s { "rawtext": [{"text":"§6スキルレベルアップ！"}] }
execute as @a[scores={job=8},tag=powerskill] at @s run playsound note.pling @s ~~~ 1 1.4
execute as @a[scores={job=8},tag=powerskill] at @s run scoreboard players remove @s ap 50
execute as @a[scores={job=8},tag=powerskill] at @s run tag @s remove powerskill
