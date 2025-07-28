scoreboard players remove @a[scores={weaponcooldown=1..}] weaponcooldown 1
#感電処理
execute as @a[tag=assault_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s positioned ^^^0.5 run particle rouge:thunder ~~1.5~
execute as @a[tag=assault_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s run tag @s remove assault_shot
execute as @a[tag=minigun_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s positioned ^^^0.5 run particle rouge:thunder ~~1.5~
execute as @a[tag=minigun_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s run tag @s remove minigun_shot
execute as @a[tag=handgun_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s positioned ^^^0.5 run particle rouge:thunder ~~1.5~
execute as @a[tag=handgun_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s run tag @s remove handgun_shot
execute as @a[tag=sniper_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s positioned ^^^0.5 run particle rouge:thunder ~~1.5~
execute as @a[tag=sniper_shot,scores={e_sparking=1..}] as @s[scores={e_sparking2=5..13}] at @s run tag @s remove sniper_shot
#アサルトライフル
execute as @a[tag=assault_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=assault_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=assault_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run tag @s[scores={reload=..0}] add wantreload
execute as @a[tag=assault_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s add wantreload
execute as @a[tag=assault_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s remove assault_shot
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run summon dio:assault_rifle ~~~
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run tag @s add shot2
execute as @a[tag=assault_shot,scores={arrow=1..},tag=battle] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=assault_shot] at @s run tag @s remove assault_shot 
#ミニガン
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run tag @s[scores={reload=..0}] add wantreload
execute as @a[tag=minigun_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s add wantreload
execute as @a[tag=minigun_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s remove minigun_shot
execute as @a[tag=minigun_shot,scores={arrow=1..},tag=battle] as @s[scores={minigunrecast=..0}] at @s run tag @s add minigunburst
execute as @a[tag=minigunburst] as @s[scores={minigunrecast=..0}] at @s run summon dio:minigun ~~~
execute as @a[tag=minigunburst] as @s[scores={minigunrecast=..0}] at @s run tag @s add shot2
execute as @a[tag=minigunburst] at @s run scoreboard players set @s minigunrecast 2
execute as @a[tag=minigunburst] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=minigunburst] at @s run tag @s remove minigunburst
execute as @a[tag=minigun_shot,scores={arrow=1..},tag=battle] as @s[scores={minigunrecast=1..}] at @s run scoreboard players remove @s minigunrecast 1
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run scoreboard players set @s minigunrecast 0
execute as @a[tag=minigun_shot,scores={arrow=..0}] at @s run tag @s remove minigun_shot 
#ハンドガン
execute as @a[tag=handgun_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=handgun_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=handgun_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run tag @s[scores={reload=..0}] add wantreload
execute as @a[tag=handgun_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s add wantreload
execute as @a[tag=handgun_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s remove handgun_shot

execute as @a[tag=handgun_shot,scores={arrow=1..},tag=battle] at @s run summon dio:hand_gun ~~~
execute as @a[tag=handgun_shot,scores={arrow=1..},tag=battle] at @s run tag @s add shot2
execute as @a[tag=handgun_shot,scores={arrow=1..},tag=battle] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=handgun_shot] at @s run tag @s remove handgun_shot 
#スナイパーライフル
execute as @a[tag=sniper_shot,scores={arrow=..0}] at @s run playsound random.click @a ~~~ 1 0.6
execute as @a[tag=sniper_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run particle minecraft:dust_plume ~~1.5~
execute as @a[tag=sniper_shot,scores={arrow=..0}] at @s positioned ^^^0.5 run tag @s[scores={reload=..0}] add wantreload
execute as @a[tag=sniper_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s add wantreload
execute as @a[tag=sniper_shot,scores={park=5}] as @s[scores={reload=..0}] as @s[scores={count_stop=40..}] as @s[scores={park_cooldown=..0}] run tag @s remove sniper_shot
execute as @a[tag=sniper_shot,scores={arrow=1..},tag=battle] at @s run summon dio:sniper_rifle ~~~
execute as @a[tag=sniper_shot,scores={arrow=1..},tag=battle] at @s run tag @s add shot2
execute as @a[tag=sniper_shot,scores={arrow=1..},tag=battle] at @s run scoreboard players remove @s arrow 1
execute as @a[tag=sniper_shot] at @s run tag @s remove sniper_shot 