#job3
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={arrow=1..}] at @s if block ~~-1.9~ air run scriptevent kb:leap 2 1
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={arrow=1..}] at @s if block ~~-1.9~ air run effect @s slow_falling 2 3
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={arrow=1..}] at @s if block ~~-1.9~ air run scoreboard players remove @s arrow 1
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] at @s[scores={arrow=..0}] run playsound note.bass @s ~~~ 1 0.5
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] unless block ~~-1.9~ air run playsound note.bass @s ~~~ 1 0.5
execute as @a[scores={job=4},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 1