execute as @p[r=3] at @s as @s[tag=jobselect] run scoreboard players set @s job 15
execute as @a[scores={job=15},tag=jobselect] at @s run clear
execute as @a[scores={job=15},tag=jobselect] at @s run structure load job15 ~~~ 0_degrees none true false false
execute as @a[scores={job=15},tag=jobselect] at @s run tag @s remove jobselect