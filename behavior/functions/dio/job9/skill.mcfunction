execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run effect @s resistance 10 1
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run effect @s slowness 10 1
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run playsound armor.equip_netherite @a ~~~ 1 1
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players add @s arrow 5
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s ac2 200
execute as @a[scores={job=9},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 40