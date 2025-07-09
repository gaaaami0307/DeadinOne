execute as @a[scores={job=10},tag=ultimate] as @s[scores={ap=..99}] at @s run tellraw @s { "rawtext": [{"text":"§4APが100必要"}] }
execute as @a[scores={job=10},tag=ultimate] as @s[scores={ap=..99}] at @s run tag @s remove ultimate
execute as @a[scores={job=10},tag=ultimate] at @s run tellraw @a { "rawtext": [{"text":"§dアルティメット：§6裁きの閃光§l"}] }
execute as @a[scores={job=10},tag=ultimate] at @s run execute as @a at @s run playsound mob.enderdragon.growl @s ~~~ 0.5 1 
execute as @a[scores={job=10},tag=ultimate] at @s run particle dio:flash_explode ~~1~
execute as @a[scores={job=10},tag=ultimate] at @s run particle dio:flash_trap ~~1~
execute as @a[scores={job=10},tag=ultimate] at @s run execute as @e[scores={job=!10},family=!inanimate,type=!item] at @s run particle dio:flash_explode ~~~
execute as @a[scores={job=10},tag=ultimate] at @s run camera @a[scores={job=!10}] fade time 0.1 5 10 color 255 255 200
execute as @a[scores={job=10},tag=ultimate] at @s run scoreboard players set @e[scores={job=!10},family=!inanimate,type=!item] e_marking 160
execute as @a[scores={job=10},tag=ultimate] at @s run scoreboard players remove @s ap 100
execute as @a[scores={job=10},tag=ultimate] at @s run tag @s remove ultimate
