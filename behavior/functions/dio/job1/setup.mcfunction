execute as @p[r=3] at @s as @s[tag=jobselect] run scoreboard players set @s job 1
execute as @a[scores={job=1},tag=jobselect] at @s run clear
execute as @a[scores={job=1},tag=jobselect] at @s run structure load job1 ~~~ 0_degrees none true false false
execute as @a[scores={job=1},tag=jobselect] at @s run tag @s remove jobselect