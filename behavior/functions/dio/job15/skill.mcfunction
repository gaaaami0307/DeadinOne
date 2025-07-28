#job3
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s arg1 5
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 10
execute as @a[scores={job=15}] as @s[scores={arg1=1..}] at @s run scoreboard players add @s arg2 1
execute as @a[scores={job=15}] as @s[scores={arg2=2..}] at @s run summon dio:job15_skill
execute as @a[scores={job=15}] as @s[scores={arg2=2..}] at @s run scoreboard players remove @s arg1 1
execute as @a[scores={job=15}] as @s[scores={arg2=2..}] at @s run scoreboard players set @s arg2 0
