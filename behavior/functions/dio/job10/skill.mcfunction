#job3
execute as @a[scores={job=10},tag=t:sneaking] as @s[scores={recast=..0}] at @s run summon dio:job10_skill
execute as @a[scores={job=10},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 20