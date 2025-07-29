execute as @a[scores={job=15},tag=powerskill] as @s[scores={ap=..49}] at @s run tellraw @s { "rawtext": [{"text":"§4APが50必要"}] }
execute as @a[scores={job=15},tag=powerskill] as @s[scores={ap=..49}] at @s run tag @s remove powerskill
execute as @a[scores={job=15},tag=powerskill] if entity @e[type=dio:target_hp5,name=job15_attack_drone] at @s run tellraw @s { "rawtext": [{"text":"§4もうすでにドローンを出している"}] }
execute as @a[scores={job=15},tag=powerskill] if entity @e[type=dio:target_hp5,name=job15_attack_drone] at @s run tag @s remove powerskill
execute as @a[scores={job=15},tag=powerskill] at @s run summon dio:target_hp5 job15_attack_drone
execute as @a[scores={job=15},tag=powerskill] at @s run playsound beacon.activate @s ~~~ 1 2
execute as @a[scores={job=15},tag=powerskill] at @s run scoreboard players operation @e[type=dio:target_hp5,name=job15_attack_drone,c=1] UUID = @s UUID
execute as @a[scores={job=15},tag=powerskill] at @s run scoreboard players remove @s ap 50
execute as @a[scores={job=15},tag=powerskill] at @s run tag @s remove powerskill