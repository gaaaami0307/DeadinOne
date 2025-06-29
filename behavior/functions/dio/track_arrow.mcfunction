#撃たれた矢のトラック
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s run scoreboard players remove @s arrow 1
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s as @s[scores={arrow_trail=1}] run scoreboard players set @e[type=arrow,tag=!setup,c=1] arrow_trail 1
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s as @s[scores={arrow_trail=2}] run scoreboard players set @e[type=arrow,tag=!setup,c=1] arrow_trail 2
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s as @s[scores={arrow_trail=3}] run scoreboard players set @e[type=arrow,tag=!setup,c=1] arrow_trail 3
execute as @e[type=arrow,tag=!setup] at @s run tag @s add setup