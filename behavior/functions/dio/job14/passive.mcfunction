execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=0}] run effect @s speed 1 0
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=1}] run effect @s resistance 1 0
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=1}] run effect @s speed 1 1
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=1}] run effect @s jump_boost 1 0
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=2}] run effect @s resistance 1 1
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=2}] run effect @s speed 1 1
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=2}] run effect @s jump_boost 1 1
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=3}] run effect @s resistance 1 2
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=3}] run effect @s speed 1 2
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={skilllevel=3}] run effect @s jump_boost 1 2
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20] as @s[tag=spawn2,scores={ac1=..0}] run tp @s @e[name="job14_skill",type=dio:target_hp20,c=1]
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20] as @s[tag=spawn2,scores={ac1=..0}] run scoreboard players set @s ac1 200
execute as @a[scores={job=14}] at @s as @e[name="job14_skill",type=dio:target_hp20] at @s run particle minecraft:trial_spawner_detection ~~~
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={arg1=..0}] run scoreboard players add @s ap 1
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={arg1=..0}] run scoreboard players set @s arg1 20
execute as @a[scores={job=14}] at @s if entity @e[name="job14_skill",type=dio:target_hp20,r=20] as @s[scores={arg1=1..}] run scoreboard players remove @s arg1 1
execute as @a[scores={job=14},tag=spawn2] at @s run tag @s remove spawn2