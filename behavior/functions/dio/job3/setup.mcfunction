execute as @p[r=3] at @s as @s[tag=skillselect] run scoreboard players set @s job 3
execute as @a[scores={job=3},tag=skillselect] at @s run clear
execute as @a[scores={job=3},tag=skillselect] at @s run structure load job3 ~~~ 0_degrees none true false false
execute as @a[scores={job=3},tag=skillselect] at @s run tag @s remove skillselect