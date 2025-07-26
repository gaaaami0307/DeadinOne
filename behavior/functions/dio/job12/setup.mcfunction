execute as @p[r=3] at @s as @s[tag=jobselect] run scoreboard players set @s job 12
execute as @a[scores={job=12},tag=jobselect] at @s run clear
execute as @a[scores={job=12},tag=jobselect] at @s run structure load job12 ~~~ 0_degrees none true false false
execute as @a[scores={job=12},tag=jobselect] at @s run tag @s remove jobselect