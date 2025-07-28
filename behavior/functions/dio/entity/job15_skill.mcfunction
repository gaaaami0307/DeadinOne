#death_timer...再帰回数
scoreboard players add @s death_timer 1
#
# 初期化
#
#ID=E_job15
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @s add E_job15
#発射元ターゲット
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @e[c=1,family=!inanimate,type=!item,tag=!E_job15] add E_job15_settinger
#初期位置
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run execute as @e[tag=E_job15_settinger,c=1] at @s positioned ^^^-25 run tp @e[tag=E_job15,c=1] ~~10~ facing @s[c=1]
#set ID
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players operation @s UUID = @e[tag=E_job15_settinger,c=1] UUID
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players operation @s job = @e[tag=E_job15_settinger,c=1] job
#発射位置
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp ^^^27.5
#ばらけさせる
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players random @s arg1 -5 5
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players random @s arg2 -5 5
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=-5}] ~~~ ~ ~-2.0
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=-4}] ~~~ ~ ~-1.6
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=-3}] ~~~ ~ ~-1.2
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=-2}] ~~~ ~ ~-0.8
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=-1}] ~~~ ~ ~-0.4
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=1}] ~~~ ~ ~0.4
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=2}] ~~~ ~ ~0.8
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=3}] ~~~ ~ ~1.2
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=4}] ~~~ ~ ~1.6
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg1=5}] ~~~ ~ ~2.0
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=-5}] ~~~ ~-2.0 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=-4}] ~~~ ~-1.6 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=-3}] ~~~ ~-1.2 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=-2}] ~~~ ~-0.8 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=-1}] ~~~ ~-0.4 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=1}] ~~~ ~0.4 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=2}] ~~~ ~0.8 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=3}] ~~~ ~1.2 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=4}] ~~~ ~1.6 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s[scores={arg2=5}] ~~~ ~2.0 ~
#高さ調整
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s ~~110.5~
#発射時効果音 audio/pitch
execute as @s[scores={death_timer=1}] at @s positioned ~~-110~ run playsound firework.large_blast @a ~~~ 1.5 1.4
#発射時パーティクル
execute as @s[scores={death_timer=1}] at @s positioned ~~-100~ run particle minecraft:large_explosion ~~~
#
# 動作
#
#移動
execute as @s at @s positioned ~~~ run tp @s ^^^0.5 true
execute as @s at @s positioned ~~-100~ unless block ~~~ air unless block ~~~ wooden_door unless block ~~~ ladder unless block ~~~ birch_trapdoor run kill @s
#パーティクル
execute as @s at @s positioned ~~-100~ run particle minecraft:basic_flame_particle ~~~
#当たり判定--E_job15_hitter
execute as @s at @s positioned ~~-100~ as @e[family=!inanimate,type=!item,x=~-0.3,y=~-0.3,z=~-0.3,dx=0,dy=0,dz=0] if entity @s[x=~-0.7,y=~-0.7,z=~-0.7,dx=0,dy=0,dz=0] positioned ~~100~ unless score @e[tag=E_job15,c=1] UUID = @s UUID run tag @s add E_job15_hitter
#ヒット時効果音 audio/pitch
execute as @s at @s positioned ~~-100~ as @e[tag=E_job15_hitter] at @s run playsound fall.chain @a ~~~ 1.0 1.0
#ヒット時パーティクル
execute as @s at @s positioned ~~-100~ as @e[tag=E_job15_hitter] at @s run particle minecraft:egg_destroy_emitter ~~1~
#ヒット時消滅
execute as @s at @s positioned ~~-100~ if entity @e[tag=E_job15_hitter] run scoreboard players set @s death_timer 1000000
#ヒット時ダメージ*最後に持ってくること*
execute as @s at @s positioned ~~~ as @e[tag=!E_job15,family=!inanimate,type=!item] if score @s UUID = @e[tag=E_job15,c=1] UUID run damage @e[tag=E_job15_hitter,c=1] 2 entity_attack entity @s
#ヒット処理終了
execute as @s at @s positioned ~~-100~ as @a[tag=E_job15_hitter] run tag @s remove E_job15_hitter
execute as @s at @s positioned ~~-100~ as @e[tag=E_job15_hitter] run tag @s remove E_job15_hitter
#回数制限消滅
execute as @s[scores={death_timer=200..}] at @s run kill @s
#再帰
execute as @e[tag=E_job15,c=1,scores={death_timer=..199}] at @s run function dio/entity/job15_skill