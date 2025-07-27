#リロード
execute as @a[scores={park=5},tag=battle] as @s[scores={reload=..0}] as @s[scores={count_stop=40}] as @s[scores={park_cooldown=..0}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[tag=wantreload] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
execute as @a[tag=wantreload] at @s run scoreboard players set @s reload 61
execute as @a[tag=wantreload,scores={park=5}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] at @s run scoreboard players operation @s sub_reload_ammo += @s arrow
execute as @a[tag=wantreload,scores={park=5}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] at @s run playsound mob.elderguardian.curse @s ~~~ 1 1.5
execute as @a[tag=wantreload,scores={park=5}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] at @s run scoreboard players set @s park_cooldown 400
execute as @a[tag=wantreload,scores={park=18}] at @s run scoreboard players add @s e_marking 60
execute as @a[tag=wantreload] at @s run scoreboard players set @s arrow 0
execute as @a[tag=wantreload] at @s run tag @s remove wantreload