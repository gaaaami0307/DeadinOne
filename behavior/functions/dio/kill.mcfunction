#キル判定
tag @a[tag=t:kill] add kill
scoreboard players add @a[tag=kill] killstreak 1
execute as @a[tag=kill,scores={killstreak=1}] at @s run playsound random.orb @s ~~~ 2 1
execute as @a[tag=kill,scores={killstreak=2}] at @s run playsound random.orb @s ~~~ 2 1.15
execute as @a[tag=kill,scores={killstreak=3}] at @s run playsound random.orb @s ~~~ 2 1.3
execute as @a[tag=kill,scores={killstreak=4}] at @s run playsound random.orb @s ~~~ 2 1.45
execute as @a[tag=kill,scores={killstreak=5..}] at @s run playsound random.totem @s ~~~ 2 1
execute as @a[tag=kill,scores={killstreak=1..}] at @s positioned ^^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=2..}] at @s positioned ^0.1^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=3..}] at @s positioned ^-0.1^^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=4..}] at @s positioned ^^0.2^1 run particle minecraft:raid_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=5..}] at @s positioned ^^^1 run particle minecraft:trial_omen_emitter ~~1~
execute as @a[tag=kill,scores={killstreak=5..}] at @s positioned ^^^1 run particle minecraft:critical_hit_emitter ~~2~
execute as @a[tag=kill] at @s run tag @s add kill2
execute as @a[tag=kill] at @s run scoreboard players add @s arrow 3
execute as @a[tag=kill] at @s run tag @s remove kill