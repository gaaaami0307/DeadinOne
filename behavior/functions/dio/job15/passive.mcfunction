#
# アタックドローン
#
#setup
execute as @e[type=dio:target_hp5,name=job15_attack_drone,tag=!setup] at @s run scoreboard players set @s arg1 0
execute as @e[type=dio:target_hp5,name=job15_attack_drone,tag=!setup] at @s run tag @s add setup
#追尾
execute as @a[scores={job=15}] at @s positioned ^^^-25 positioned ~~10~ positioned ^^^25.5 run tp @e[type=dio:target_hp5,name=job15_attack_drone] ~~~ true
execute as @e[type=dio:target_hp5,name=job15_attack_drone] at @s run particle dio:red_cloud ~~~
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg1=1..}] at @s run scoreboard players remove @s arg1 1
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg1=1}] at @s run playsound tile.piston.out @a ~~-10~ 1 1.2
#shot
execute as @e[type=dio:target_hp5,name=job15_attack_drone] if entity @a[scores={job=15},tag=shot2] as @s[scores={arg1=..0}] at @s run scoreboard players set @s arg2 5
execute as @e[type=dio:target_hp5,name=job15_attack_drone] if entity @a[scores={job=15},tag=shot2] as @s[scores={arg1=..0}] at @s run scoreboard players set @s arg1 80
execute as @a[scores={job=15},tag=shot2] at @s run tag @s remove shot2
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg2=1..}] at @s run scoreboard players add @s arg3 1
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg3=2..}] at @s run summon dio:job15_skill ~~-10~
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg3=2..}] at @s run scoreboard players remove @s arg2 1
execute as @e[type=dio:target_hp5,name=job15_attack_drone] as @s[scores={arg3=2..}] at @s run scoreboard players set @s arg3 0
#
# 索敵ドローン
#
#setup
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!setup] at @s run scoreboard players set @s arg1 0
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!setup] at @s run tag @s add setup
#挙動
execute as @e[type=dio:target_hp5,name=job15_search_drone] at @s run particle dio:blue_cloud ~~~
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!found] at @s run execute as @a[r=3] unless score @s UUID = @e[type=dio:target_hp5,name=job15_search_drone,c=1] UUID run playsound note.flute @a ~~~ 1 1.5
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!found] at @s run execute as @a[r=3] unless score @s UUID = @e[type=dio:target_hp5,name=job15_search_drone,c=1] UUID run scoreboard players add @s e_marking 100
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!found] at @s run execute as @a[r=3] unless score @s UUID = @e[type=dio:target_hp5,name=job15_search_drone,c=1] UUID run scoreboard players add @a[scores={job=15}] ap 10
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=!found] at @s run execute as @a[r=3] unless score @s UUID = @e[type=dio:target_hp5,name=job15_search_drone,c=1] UUID run tag @e[type=dio:target_hp5,name=job15_search_drone,c=1] add found
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found] at @s run scoreboard players add @s arg1 1
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found] at @s run scoreboard players add @s arg2 1
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg2=5..}] at @s run playsound note.bell @a ~~~ 1 1.5
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg2=5..}] at @s run scoreboard players set @s arg2 0
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=10..}] at @s run tp @s ^^^0.25 facing @e[scores={e_marking=1..},c=1]
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=10..80}] at @s run tp @s ~~0.1~
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=80..}] at @s run particle minecraft:huge_explosion_emitter ~~1~
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=80..}] at @s run damage @a[r=4] 4 entity_explosion entity @p[scores={job=15}]
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=80..}] at @s run playsound random.explode @a ~~~ 1 1
execute as @e[type=dio:target_hp5,name=job15_search_drone,tag=found,scores={arg1=80..}] at @s run kill @s