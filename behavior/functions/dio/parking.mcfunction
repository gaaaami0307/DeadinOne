#park14 堅牢
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100}] at @s run playsound note.bell @s ~~~ 1 1
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100..}] at @s run particle minecraft:end_chest ~~0.8~
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=200}] at @s run playsound note.bell @s ~~~ 1 1.1
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=300}] at @s run playsound note.bell @s ~~~ 1 1.2
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400}] at @s run playsound note.bell @s ~~~ 1 1.3
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run scoreboard players set @s e_marking 2
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run particle minecraft:end_chest ~~1.3~
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=500}] at @s run playsound note.bell @s ~~~ 1 1.4
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=530}] at @s run playsound note.bell @s ~~~ 1 1.5
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=550}] at @s run playsound note.bell @s ~~~ 1 1.6
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=565}] at @s run playsound note.bell @s ~~~ 1 1.7
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=570}] at @s run playsound note.bell @s ~~~ 1 1.8
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=574}] at @s run playsound note.bell @s ~~~ 1 1.9
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=577}] at @s run playsound note.bell @s ~~~ 1 2.0
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=580}] at @s run playsound note.bell @s ~~~ 1 2.1
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=582}] at @s run playsound note.bell @s ~~~ 1 2.2
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=584}] at @s run playsound note.bell @s ~~~ 1 2.3
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=586}] at @s run playsound note.bell @s ~~~ 1 2.4
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=588}] at @s run playsound note.bell @s ~~~ 1 2.5
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=590}] at @s run playsound note.bell @s ~~~ 1 2.6
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=591}] at @s run playsound note.bell @s ~~~ 1 2.7
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=592}] at @s run playsound note.bell @s ~~~ 1 2.8
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=593}] at @s run playsound note.bell @s ~~~ 1 2.9
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=594}] at @s run playsound note.bell @s ~~~ 1 3.0
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound random.totem @a ~~~ 1 1.6
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound ambient.weather.lightning.impact @a ~~~ 1 0.5
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run effect @s resistance 1000000 2 true
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run tellraw @s { "rawtext": [{"text":"§6パーク発動！！！"}] }
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run particle minecraft:breeze_wind_explosion_emitter ~~1~
execute as @a[scores={park=14}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run scoreboard players set @s park_cooldown 2400
#park15 銃撃
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100}] at @s run playsound note.bit @s ~~~ 1 1
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100..}] at @s run particle minecraft:end_chest ~~0.8~
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=200}] at @s run playsound note.bit @s ~~~ 1 1.1
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=300}] at @s run playsound note.bit @s ~~~ 1 1.2
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400}] at @s run playsound note.bit @s ~~~ 1 1.3
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run scoreboard players set @s e_marking 2
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run particle minecraft:end_chest ~~1.3~
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=500}] at @s run playsound note.bit @s ~~~ 1 1.4
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=530}] at @s run playsound note.bit @s ~~~ 1 1.5
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=550}] at @s run playsound note.bit @s ~~~ 1 1.6
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=565}] at @s run playsound note.bit @s ~~~ 1 1.7
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=570}] at @s run playsound note.bit @s ~~~ 1 1.8
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=574}] at @s run playsound note.bit @s ~~~ 1 1.9
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=577}] at @s run playsound note.bit @s ~~~ 1 2.0
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=580}] at @s run playsound note.bit @s ~~~ 1 2.1
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=582}] at @s run playsound note.bit @s ~~~ 1 2.2
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=584}] at @s run playsound note.bit @s ~~~ 1 2.3
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=586}] at @s run playsound note.bit @s ~~~ 1 2.4
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=588}] at @s run playsound note.bit @s ~~~ 1 2.5
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=590}] at @s run playsound note.bit @s ~~~ 1 2.6
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=591}] at @s run playsound note.bit @s ~~~ 1 2.7
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=592}] at @s run playsound note.bit @s ~~~ 1 2.8
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=593}] at @s run playsound note.bit @s ~~~ 1 2.9
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=594}] at @s run playsound note.bit @s ~~~ 1 3.0
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound random.totem @a ~~~ 1 1.6
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound ambient.weather.lightning.impact @a ~~~ 1 0.5
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run scoreboard players add @s e_overdrive 1200
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run tellraw @s { "rawtext": [{"text":"§6パーク発動！！！"}] }
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run particle minecraft:breeze_wind_explosion_emitter ~~1~
execute as @a[scores={park=15}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run scoreboard players set @s park_cooldown 3600
#park16 索敵
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100}] at @s run playsound note.banjo @s ~~~ 1 1
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=100..}] at @s run particle minecraft:end_chest ~~0.8~
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=200}] at @s run playsound note.banjo @s ~~~ 1 1.1
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=300}] at @s run playsound note.banjo @s ~~~ 1 1.2
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400}] at @s run playsound note.banjo @s ~~~ 1 1.3
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run scoreboard players set @s e_marking 2
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=400..}] at @s run particle minecraft:end_chest ~~1.3~
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=500}] at @s run playsound note.banjo @s ~~~ 1 1.4
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=530}] at @s run playsound note.banjo @s ~~~ 1 1.5
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=550}] at @s run playsound note.banjo @s ~~~ 1 1.6
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=565}] at @s run playsound note.banjo @s ~~~ 1 1.7
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=570}] at @s run playsound note.banjo @s ~~~ 1 1.8
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=574}] at @s run playsound note.banjo @s ~~~ 1 1.9
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=577}] at @s run playsound note.banjo @s ~~~ 1 2.0
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=580}] at @s run playsound note.banjo @s ~~~ 1 2.1
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=582}] at @s run playsound note.banjo @s ~~~ 1 2.2
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=584}] at @s run playsound note.banjo @s ~~~ 1 2.3
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=586}] at @s run playsound note.banjo @s ~~~ 1 2.4
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=588}] at @s run playsound note.banjo @s ~~~ 1 2.5
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=590}] at @s run playsound note.banjo @s ~~~ 1 2.6
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=591}] at @s run playsound note.banjo @s ~~~ 1 2.7
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=592}] at @s run playsound note.banjo @s ~~~ 1 2.8
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=593}] at @s run playsound note.banjo @s ~~~ 1 2.9
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=594}] at @s run playsound note.banjo @s ~~~ 1 3.0
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound random.totem @a ~~~ 1 1.6
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound ambient.weather.lightning.impact @a ~~~ 1 0.5
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run playsound mob.allay.death @a ~~~ 1 0.5
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run scoreboard players add @e[rm=0.1,scores={job=!-23}] e_marking 800
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run tellraw @s { "rawtext": [{"text":"§6パーク発動！！！"}] }
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run particle minecraft:breeze_wind_explosion_emitter ~~1~
execute as @a[scores={park=16}] as @s[scores={park_cooldown=..0}] as @s[scores={count_stop=600}] at @s run scoreboard players set @s park_cooldown 3000
#パーク19
execute as @a[scores={park=19}] unless entity @a[scores={killCount=5..}] at @s run scoreboard players add @s[scores={recast=1..}] recastT 1
#パーク20
execute as @a[scores={park=20}] if entity @a[scores={killCount=25..}] at @s run scoreboard players add @s[scores={recast=1..}] recastT 1