execute as @a[scores={job=9},tag=ultimate] as @s[scores={ap=..99}] at @s run tellraw @s { "rawtext": [{"text":"§4APが100必要"}] }
execute as @a[scores={job=9},tag=ultimate] as @s[scores={ap=..99}] at @s run tag @s remove ultimate
execute as @a[scores={job=9},tag=ultimate] at @s run tellraw @a { "rawtext": [{"text":"§dアルティメット：§8§l鉄壁の蹂躙"}] }
execute as @a[scores={job=9},tag=ultimate] at @s run execute as @a at @s run playsound mob.enderdragon.growl @s ~~~ 0.5 1 
execute as @a[scores={job=9},tag=ultimate] at @s run scoreboard players set @s recast 0
execute as @a[scores={job=9},tag=ultimate] at @s run scoreboard players set @s ac1 600
execute as @a[scores={job=9},tag=ultimate] at @s run scoreboard players remove @s ap 100
execute as @a[scores={job=9},tag=ultimate] at @s run tag @s remove ultimate
execute as @a[scores={job=9}] as @s[scores={ac1=1..}] at @s run effect @s slowness 0 200 
execute as @a[scores={job=9}] as @s[scores={ac1=1..}] at @s run effect @s night_vision 1 0 
execute as @a[scores={job=9}] as @s[scores={ac1=1..}] as @s[scores={reload=1}] at @s run scoreboard players set @s recast 0