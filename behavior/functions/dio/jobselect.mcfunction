#選択終了
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] run tag @a[tag=ready] add parkselect
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] run tag @a[tag=ready] add parkready
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] execute as @a[tag=ready] at @s run playsound note.chime @s ~~~ 1 1
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] execute as @a[tag=ready] at @s run tellraw @s { "rawtext": [{"text":"§6パークを選択しよう！！"}] }
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] execute as @a[tag=ready] at @s run tp @s -112 -60 -30
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] unless entity @a[tag=parkselect] run tag @a[tag=ready] remove ready
execute if entity @a[tag=parkready] unless entity @a[tag=parkselect] run scoreboard players set @a[tag=parkready] countdown 100
execute if entity @a[tag=parkready] unless entity @a[tag=parkselect] run tag @a[tag=parkready] remove parkready