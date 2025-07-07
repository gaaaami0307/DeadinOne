#リロード
execute as @s[scores={park=5},tag=battle] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61
execute as @a[scores={arrow=..0},tag=battle] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61