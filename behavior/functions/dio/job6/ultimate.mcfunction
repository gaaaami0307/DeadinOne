execute as @a[scores={job=6},tag=ultimate] as @s[scores={ap=..99}] at @s run tellraw @s { "rawtext": [{"text":"§4APが100必要"}] }
execute as @a[scores={job=6},tag=ultimate] as @s[scores={ap=..99}] at @s run tag @s remove ultimate
execute as @a[scores={job=6},tag=ultimate] at @s run tellraw @a { "rawtext": [{"text":"§dアルティメット：§c§l震撼天地"}] }
execute as @a[scores={job=6},tag=ultimate] at @s run execute as @a at @s run playsound mob.enderdragon.growl @s ~~~ 0.5 1 
execute as @a[scores={job=6},tag=ultimate] at @s run effect @s health_boost 9999999 0
execute as @a[scores={job=6},tag=ultimate] at @s run effect @s speed 9999999 2
execute as @a[scores={job=6},tag=ultimate] at @s run effect @s jump_boost 9999999 2
execute as @a[scores={job=6},tag=ultimate] at @s run effect @s regeneration 3 99
execute as @a[scores={job=6},tag=ultimate] at @s run effect @s night_vision 9999999 0
execute as @a[scores={job=6},tag=ultimate] at @s run effect @e[scores={job=!6},family=!inanimate,type=!item] darkness 30 2
execute as @a[scores={job=6},tag=ultimate] at @s run scoreboard players remove @s ap 100
execute as @a[scores={job=6},tag=ultimate] at @s run tag @s remove ultimate
