execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run effect @s absorption 15 0
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run effect @s slowness 15 2
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run playsound armor.equip_netherite @a ~~~ 1 1
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 40