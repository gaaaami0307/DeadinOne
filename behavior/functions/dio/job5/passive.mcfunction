execute as @e[type=minecraft:arrow,scores={job=5}] at @s run particle dio:ice ~~~
execute as @e[type=minecraft:arrow,scores={job=5}] at @s run execute as @e[r=1.5,scores={job=!5},family=!inanimate,type=!item] at @s run playsound random.glass @a ~~~ 1 1
execute as @e[type=minecraft:arrow,scores={job=5}] at @s run effect @e[r=1.5,scores={job=!5},family=!inanimate,type=!item] slowness 5 1