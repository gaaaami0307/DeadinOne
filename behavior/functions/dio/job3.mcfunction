#job3
execute as @a[scores={job=3},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scriptevent kb:leap 2 0.5
execute as @a[scores={job=3},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 15