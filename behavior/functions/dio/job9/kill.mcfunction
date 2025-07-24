execute as @a[scores={job=9},tag=kill2] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=9},tag=kill2] as @s[scores={ac1=..0}] as @s[scores={ac2=1..}] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=9},tag=kill2] as @s[scores={ac1=..0}] as @s[scores={ac2=1..}] at @s run tellraw @s { "rawtext": [{"text":"§aカウンターキル！"}] }
execute as @a[scores={job=9},tag=kill2] at @s run tag @s remove kill2