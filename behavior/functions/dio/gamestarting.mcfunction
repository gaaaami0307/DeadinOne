scoreboard players remove @a[scores={countdown=1..}] countdown 1
execute as @a[scores={countdown=90}] at @s run tellraw @s { "rawtext": [{"text":"§6ゲームの準備が整いました。"}] }
execute as @a[scores={countdown=90}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[scores={countdown=70}] at @s run tellraw @s { "rawtext": [{"text":"§63秒後にゲームを始めます。"}] }
execute as @a[scores={countdown=70}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[scores={countdown=40}] at @s run title @s title §aDead
execute as @a[scores={countdown=40}] at @s run title @s times 0 60 0
execute as @a[scores={countdown=40}] at @s run playsound random.click @s ~~~ 1 1
execute as @a[scores={countdown=35}] at @s run title @s title §aDead§bIn
execute as @a[scores={countdown=35}] at @s run title @s times 0 60 0
execute as @a[scores={countdown=35}] at @s run playsound random.click @s ~~~ 1 1
execute as @a[scores={countdown=30}] at @s run title @s title §aDead§bIn§cOne
execute as @a[scores={countdown=30}] at @s run title @s times 0 80 10
execute as @a[scores={countdown=30}] at @s run playsound random.click @s ~~~ 1 1
execute as @a[scores={countdown=4}] at @s run title @s title §6START!
execute as @a[scores={countdown=4}] at @s run title @s times 0 70 20
execute as @a[scores={countdown=4}] at @s run tag @s add battle
execute as @a[scores={countdown=4}] at @s run tag @s add spawn
execute as @a[scores={countdown=1}] at @s run playsound mob.enderdragon.growl @s ~~~ 0.25 1 
execute as @a[scores={countdown=1}] at @s run give @s[scores={park=11}] dio:minigun 1
execute as @a[scores={countdown=1}] at @s run give @s[scores={park=12}] dio:sniper_rifle 1
