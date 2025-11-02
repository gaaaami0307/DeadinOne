#job3
execute as @a[scores={job=14},tag=t:sneaking] as @s[scores={recast=..0}] at @s run summon dio:target_hp20 job14_skill
execute as @a[scores={job=14},tag=t:sneaking] as @s[scores={recast=..0}] as @a at @s run playsound beacon.activate @s ~~~ 1 0.8
execute as @a[scores={job=14},tag=t:sneaking] as @s[scores={recast=..0}] as @a at @s run tellraw @s { "rawtext": [{"text":"§aビーコンが設置された..."}] }
execute as @a[scores={job=14},tag=t:sneaking] as @s[scores={recast=..0}] as @a at @s run tellraw @s { "rawtext": [{"text":"探し出して破壊しよう！！"}] }
execute as @a[scores={job=14},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 180