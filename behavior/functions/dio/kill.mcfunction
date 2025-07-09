#キル判定
tag @a[tag=t:kill] add kill
execute as @a[tag=kill] as @s[tag=t:death] run scoreboard players remove @s killCount 1
execute as @a[tag=kill] as @s[tag=t:death] run tag @s remove kill
scoreboard players add @a[tag=kill] killstreak 1
#1
execute as @a[tag=kill,scores={killstreak=1}] at @s run playsound note.harp @s ~ ~ ~ 1 0.890898718140339
execute as @a[tag=kill,scores={killstreak=1}] at @s run playsound note.guitar @s ~ ~ ~ 1 0.890898718140339
execute as @a[tag=kill,scores={killstreak=1}] at @s run playsound note.bell @s ~ ~ ~ 1 0.890898718140339
#2
execute as @a[tag=kill,scores={killstreak=2}] at @s run playsound note.harp @s ~ ~ ~ 1 1
execute as @a[tag=kill,scores={killstreak=2}] at @s run playsound note.guitar @s ~ ~ ~ 1 1
execute as @a[tag=kill,scores={killstreak=2}] at @s run playsound note.bell @s ~ ~ ~ 1 1
#3
execute as @a[tag=kill,scores={killstreak=3}] at @s run playsound note.harp @s ~ ~ ~ 1 1.12246204830937
execute as @a[tag=kill,scores={killstreak=3}] at @s run playsound note.guitar @s ~ ~ ~ 1 1.12246204830937
execute as @a[tag=kill,scores={killstreak=3}] at @s run playsound note.bell @s ~ ~ ~ 1 1.12246204830937
#4
execute as @a[tag=kill,scores={killstreak=4}] at @s run playsound note.harp @s ~ ~ ~ 1 1.25992104989487
execute as @a[tag=kill,scores={killstreak=4}] at @s run playsound note.guitar @s ~ ~ ~ 1 1.25992104989487
execute as @a[tag=kill,scores={killstreak=4}] at @s run playsound note.bell @s ~ ~ ~ 1 1.25992104989487
#5
execute as @a[tag=kill,scores={killstreak=5..}] at @s run scoreboard players set @s acetime 16
#particle
execute as @a[tag=kill,scores={killstreak=1..}] at @s positioned ^^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=2..}] at @s positioned ^0.1^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=3..}] at @s positioned ^-0.1^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=4..}] at @s positioned ^^0.2^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=5..}] at @s positioned ^^^1 run particle minecraft:trial_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=5..}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
#parks
execute as @a[tag=kill,scores={park=1}] at @s run scoreboard players add @s ap 5
execute as @a[tag=kill,scores={park=4}] at @s if block ~~-0.9~ air run scoreboard players add @s ap 10
execute as @a[tag=kill,scores={park=4}] at @s if block ~~-0.9~ air run scoreboard players set @s recast 0
execute as @a[tag=kill,scores={park=7}] at @s run scoreboard players remove @s recast 10
execute as @a[tag=kill] at @s run tag @s add kill2
execute as @a[tag=kill] at @s run scoreboard players add @s arrow 3
execute as @a[tag=kill] at @s run tag @s remove kill