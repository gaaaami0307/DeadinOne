tag @a[m=a] remove setup
function dio/setup
tag @a[m=a] add jobselect
tag @a[m=a] add ready
execute as @a[tag=ready] at @s run playsound note.chime @s ~~~ 1 1
execute as @a[tag=ready] at @s run tellraw @s { "rawtext": [{"text":"§6職業を選択しよう！！"}] }
tp @a[tag=ready] -112 -60 0