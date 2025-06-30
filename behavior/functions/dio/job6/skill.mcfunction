#job3
execute as @a[scores={job=6},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={killstreak=0}] at @s run structure load job6_skill ~~~ 0_degrees none true false false
execute as @a[scores={job=6},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={killstreak=!0}] at @s run playsound note.bass @s ~~~ 1 0.5
execute as @a[scores={job=6},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={killstreak=0}] at @s run scoreboard players set @s recast 50
execute as @a[scores={job=6},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={killstreak=!0}] at @s run scoreboard players set @s recast 1