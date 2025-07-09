execute as @a[scores={job=8},tag=kill2] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=8},tag=kill2] as @s[scores={ac1=1..}] at @s run scoreboard players add @s ap 15
execute as @a[scores={job=8},tag=kill2] as @s[scores={ac1=1..}] at @s run tellraw @s { "rawtext": [{"text":"§aアクロバティックキル！"}] }
execute as @a[scores={job=8},tag=kill2] at @s run tag @s remove kill2