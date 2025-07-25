#デス判定
tag @a[tag=t:death] add death
scoreboard players set @a[tag=death] killstreak 0
scoreboard players remove @a[tag=death,scores={park=8}] recast 20
tag @a[tag=death] remove minigun_shot
tag @a[tag=death] add spawn
tag @a[tag=death] add death2
tag @a[tag=death] remove death