scoreboard players remove @a[scores={parkcountdown=1..}] parkcountdown 1
execute as @a[scores={parkcountdown=20}] at @s run tellraw @s { "rawtext": [{"text":"§6続いて、パークを選んでください。"}] }
execute as @a[scores={parkcountdown=20}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[scores={parkcountdown=1}] at @s run tag @s add parkselect
execute as @a[scores={parkcountdown=1}] at @s run tag @s add parkready
execute as @a[scores={parkcountdown=1}] at @s run tp @s -112 -60 -30 90 0
