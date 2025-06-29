#job2
execute as @a[scores={job=2},tag=t:sneaking] as @s[scores={recast=..0}] at @s run effect @s levitation 1 15
execute as @a[scores={job=2},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 30