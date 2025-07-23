#アサルトライフルを撃つ
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run summon dio:assault_rifle ~~~
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=assault_shot] at @s run tag @s remove assault_shot 