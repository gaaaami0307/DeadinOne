execute as @a[scores={job=12},tag=kill2] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=12},tag=kill2] at @s run scoreboard players add @s[scores={ac1=1..}] ap 15
execute as @a[scores={job=12},tag=kill2] as @s[scores={ac1=1..}] at @s run tellraw @s { "rawtext": [{"text":"§6アクロバティックキル！"}] }
execute as @a[scores={job=12},tag=kill2] at @s run tag @s remove kill2