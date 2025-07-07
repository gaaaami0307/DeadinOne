#リロード
execute as @a[scores={arrow=..0}] as @s[scores={park=3}] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 31
execute as @s[scores={park=5}] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61
execute as @a[scores={arrow=..0}] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61