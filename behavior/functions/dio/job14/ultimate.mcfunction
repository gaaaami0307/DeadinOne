execute as @a[scores={job=14},tag=ultimate] as @s[scores={ap=..99}] at @s run tellraw @s { "rawtext": [{"text":"§4APが100必要"}] }
execute as @a[scores={job=14},tag=ultimate] as @s[scores={ap=..99}] at @s run tag @s remove ultimate
execute as @a[scores={job=14},tag=ultimate] as @s[scores={skilllevel=3..}] at @s run tellraw @s { "rawtext": [{"text":"§4パワーがすでに最大"}] }
execute as @a[scores={job=14},tag=ultimate] as @s[scores={skilllevel=3..}] at @s run tag @s remove ultimate
execute as @a[scores={job=14},tag=ultimate] at @s run tellraw @a { "rawtext": [{"text":"§dアルティメット：§bビーコン§eパワーアップ§l"}] }
execute as @a[scores={job=14},tag=ultimate] at @s run execute as @a at @s run playsound mob.enderdragon.growl @s ~~~ 0.5 1 
execute as @a[scores={job=14},tag=ultimate] at @s run scoreboard players add @s skilllevel 1
execute as @a[scores={job=14},tag=ultimate] at @s run scoreboard players remove @s ap 100
execute as @a[scores={job=14},tag=ultimate] at @s run tag @s remove ultimate