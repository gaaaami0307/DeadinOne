execute as @a[scores={job=6},tag=kill2] at @s run tellraw @s {"rawtext":[{"text":"§c連続キル§r: "},{"score":{"name":"@p","objective":"killstreak"}}]}
execute as @a[scores={job=6},tag=kill2] as @s[scores={killstreak=3}] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=6},tag=kill2] as @s[scores={killstreak=4}] at @s run scoreboard players add @s ap 15
execute as @a[scores={job=6},tag=kill2] as @s[scores={killstreak=5..}] at @s run scoreboard players add @s ap 20
execute as @a[scores={job=6},tag=kill2] at @s run tag @s remove kill2