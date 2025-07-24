execute as @a[scores={job=9}] as @s[scores={reload=1}] at @s run scoreboard players add @s arrow 3
execute as @a[scores={job=9},tag=!job9_reload] as @s[scores={reload=1..}] at @s run scoreboard players add @s reload 30
execute as @a[scores={job=9},tag=!job9_reload] as @s[scores={reload=1..}] at @s run tag @s add job9_reload
execute as @a[scores={job=9},tag=job9_reload] as @s[scores={reload=..0}] at @s run tag @s remove job9_reload