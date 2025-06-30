execute as @a[scores={job=4}] as @s[scores={reload=1}] at @s run effect @s jump_boost 3 4 true
execute as @a[scores={job=4}] as @s[scores={reload=1}] at @s run scoreboard players add @s arrow 2
execute as @a[scores={job=4}] as @s at @s unless block ~~-1.9~ air run effect @s slowness 1 0 true
execute as @a[scores={job=4}] as @s at @s if block ~~-1.9~ air run effect @s slowness 0 1 true