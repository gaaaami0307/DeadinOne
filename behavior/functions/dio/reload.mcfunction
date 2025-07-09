#リロード
execute as @a[scores={park=5},tag=battle] as @s[tag=t:attack_time,scores={reload=..0}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
execute as @a[scores={park=5},tag=battle] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61
execute as @a[scores={arrow=..0},tag=battle] as @s[tag=t:attack_time,scores={reload=..0}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
execute as @a[scores={arrow=..0},tag=battle] run scoreboard players set @s[tag=t:attack_time,scores={reload=..0}] reload 61