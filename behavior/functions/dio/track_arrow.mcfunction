#撃たれた矢のトラック
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s run scoreboard players remove @s arrow 1
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s as @s run scoreboard players operation @e[type=arrow,tag=!setup] arrow_trail = @s arrow_trail
execute as @e[type=arrow,tag=!setup] at @s run execute as @p at @s as @s run scoreboard players operation @e[type=arrow,tag=!setup] job = @s job
execute as @e[type=arrow,tag=!setup] at @s run tag @s add setup