execute as @a[scores={job=9},tag=!job9_reload] as @a[scores={reload=1..}] at @s run scoreboard players add @s reload 30
execute as @a[scores={job=9},tag=!job9_reload] as @a[scores={reload=1..}] at @s run tag @s add job9_reload
execute as @a[scores={job=9},tag=job9_reload] as @a[scores={reload=..0}] at @s run tag @s remove job9_reload