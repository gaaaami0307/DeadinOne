execute as @a[scores={job=11},tag=powerskill] as @s[scores={ap=..49}] at @s run tellraw @s { "rawtext": [{"text":"§4APが50必要"}] }
execute as @a[scores={job=11},tag=powerskill] as @s[scores={ap=..49}] at @s run tag @s remove powerskill
execute as @a[scores={job=11},tag=powerskill] at @s run scoreboard players add @s skilllevel 1
execute as @a[scores={job=11},tag=powerskill] at @s[scores={skilllevel=..3}] run tellraw @s { "rawtext": [{"text":"§6スキルレベルアップ！"}] }
execute as @a[scores={job=11},tag=powerskill] at @s[scores={skilllevel=4..}] run tellraw @s { "rawtext": [{"text":"§6スキルリキャスト！"}] }
execute as @a[scores={job=11},tag=powerskill] at @s[scores={skilllevel=4..}] run scoreboard players set @s recast 0
execute as @a[scores={job=11},tag=powerskill] at @s[scores={skilllevel=4..}] run scoreboard players remove @s skilllevel 1
execute as @a[scores={job=11},tag=powerskill] at @s run playsound note.pling @s ~~~ 1 1.4
execute as @a[scores={job=11},tag=powerskill] at @s run scoreboard players remove @s ap 50
execute as @a[scores={job=11},tag=powerskill] at @s run tag @s remove powerskill
