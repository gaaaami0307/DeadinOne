#job3
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run summon dio:target_hp5 job15_search_drone ~~1~
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run playsound vault.open_shutter @s ~~~
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players operation @e[type=dio:target_hp5,name=job15_search_drone,c=1] UUID = @s UUID
execute as @a[scores={job=15},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 30