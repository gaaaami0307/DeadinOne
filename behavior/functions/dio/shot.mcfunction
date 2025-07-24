#アサルトライフルを撃つ
execute as @a[tag=assault_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=assault_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run summon dio:assault_rifle ~~~
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=assault_shot] at @s run tag @s remove assault_shot 
#ミニガン
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=minigun_shot,scores={arrow=1..},tag=battle] as @s[scores={minigunrecast=..0}] at @s run tag @s add minigunburst
execute as @a[tag=minigunburst] as @s[scores={minigunrecast=..0}] at @s run summon dio:minigun ~~~
execute as @a[tag=minigunburst] at @s run scoreboard players set @s minigunrecast 2
execute as @a[tag=minigunburst] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=minigunburst] at @s run tag @s remove minigunburst
execute as @a[tag=minigun_shot,scores={arrow=1..},tag=battle] as @s[scores={minigunrecast=1..}] at @s run scoreboard players remove @s minigunrecast 1
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run scoreboard players set @s minigunrecast 0
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run tag @s remove minigun_shot 