#リロード中
scoreboard players remove @a[scores={reload=1..}] reload 1
execute as @a[scores={reload=1}] at @s run playsound crossbow.loading.end @a ~~~ 1 1
execute as @a[scores={reload=1}] at @s positioned ^^^1 run particle minecraft:basic_crit_particle ~~2~
execute as @a[scores={reload=60}] at @s run playsound crossbow.loading.start @a ~~~ 1 1
execute as @a[scores={reload=60}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
scoreboard players set @a[scores={reload=1}] arrow 5