#job3
execute as @a[scores={job=12},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scriptevent kb:dash 3 0.1
execute as @a[scores={job=12},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s ac1 15
execute as @a[scores={job=12},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 15