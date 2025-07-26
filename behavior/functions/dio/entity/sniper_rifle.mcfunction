#death_timer...再帰回数
scoreboard players add @s death_timer 1
#
# 初期化
#
#ID=E_snipe
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @s add E_snipe
#発射元ターゲット
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @e[c=1,family=!inanimate,type=!item,tag=!E_snipe] add E_snipe_settinger
#初期位置
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run execute as @e[tag=E_snipe_settinger,c=1] at @s positioned ^^^-30 run tp @e[tag=E_snipe,c=1] ~~~ facing @e[tag=E_snipe_settinger,c=1]
#set ID
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players operation @s UUID = @e[tag=E_snipe_settinger,c=1] UUID
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run scoreboard players operation @s job = @e[tag=E_snipe_settinger,c=1] job
#発射位置
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp ^^^30.5
#うごいてるとばらけさせる
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run execute as @e[tag=E_snipe_settinger,c=1] as @s[scores={speed_m_s=1..}] run tag @e[tag=E_snipe,c=1] add bure
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run scoreboard players random @s arg1 -5 5
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run scoreboard players random @s arg2 -5 5
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=-5}] ~~~ ~ ~-10
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=-4}] ~~~ ~ ~-8
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=-3}] ~~~ ~ ~-6
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=-2}] ~~~ ~ ~-4
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=-1}] ~~~ ~ ~-2
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=1}] ~~~ ~ ~2
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=2}] ~~~ ~ ~4
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=3}] ~~~ ~ ~6
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=4}] ~~~ ~ ~8
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg1=5}] ~~~ ~ ~10
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=-5}] ~~~ ~-10 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=-4}] ~~~ ~-8 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=-3}] ~~~ ~-6 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=-2}] ~~~ ~-4 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=-1}] ~~~ ~-2 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=1}] ~~~ ~2 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=2}] ~~~ ~4 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=3}] ~~~ ~6 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=4}] ~~~ ~8 ~
execute as @s[scores={death_timer=1},tag=bure] at @s positioned ~~~ run tp @s[scores={arg2=5}] ~~~ ~10 ~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @e[tag=E_snipe_settinger,c=1] remove E_snipe_settinger
#高さ調整
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s ~~101.5~
#発射時効果音 audio/pitch
execute as @s[scores={death_timer=1}] at @s positioned ~~-100~ run playsound ambient.weather.lightning.impact @a ~~~ 1.5 1.5
#発射時パーティクル
execute as @s[scores={death_timer=1}] at @s positioned ~~-100~ run particle minecraft:critical_hit_emitter ~~~
#
# 動作
#
#移動
execute as @s at @s positioned ~~~ run tp @s ^^^0.5 true
execute as @s at @s positioned ~~-100~ unless block ~~~ air unless block ~~~ glass unless block ~~~ wooden_door unless block ~~~ ladder unless block ~~~ birch_trapdoor run kill @s
execute as @s at @s positioned ~~-100~ if block ~~~ glass run playsound random.glass @a ~~~ 1 1
execute as @s at @s positioned ~~-100~ if block ~~~ glass run particle minecraft:weaving_emitter ~~~
#パーティクル
execute as @s at @s positioned ~~-100~ run particle minecraft:dust_plume ~~-0.3~
execute as @s at @s positioned ~~-100~ run particle minecraft:redstone_torch_dust_particle ~~~
#当たり判定--E_snipe_hitter
execute as @s at @s positioned ~~-100~ as @e[family=!inanimate,type=!item,x=~-0.3,y=~-0.3,z=~-0.3,dx=0,dy=0,dz=0] if entity @s[x=~-0.7,y=~-0.7,z=~-0.7,dx=0,dy=0,dz=0] positioned ~~100~ unless score @e[tag=E_snipe,c=1] UUID = @s UUID run tag @s add E_snipe_hitter
#ヒット時効果音 audio/pitch
execute as @s at @s positioned ~~-100~ as @e[tag=E_snipe_hitter] at @s run playsound mace.heavy_smash_ground @a ~~~ 1.0 2.0
#ヒット時パーティクル
execute as @s at @s positioned ~~-100~ as @e[tag=E_snipe_hitter] at @s run particle minecraft:egg_destroy_emitter ~~1~
#ヒット時消滅
execute as @s at @s positioned ~~-100~ if entity @e[tag=E_snipe_hitter] run scoreboard players set @s death_timer 1000000
#ヒット時ダメージ*最後に持ってくること*
execute as @s at @s positioned ~~~ as @e[tag=!E_snipe,family=!inanimate,type=!item] if score @s UUID = @e[tag=E_snipe,c=1] UUID run damage @e[tag=E_snipe_hitter,c=1] 6 entity_attack entity @s
#ヒット処理終了
execute as @s at @s positioned ~~-100~ as @a[tag=E_snipe_hitter] run tag @s remove E_snipe_hitter
execute as @s at @s positioned ~~-100~ as @e[tag=E_snipe_hitter] run tag @s remove E_snipe_hitter
#回数制限消滅
execute as @s[scores={death_timer=201..}] at @s run kill @s
#再帰
execute as @e[tag=E_snipe,c=1,scores={death_timer=..200}] at @s run function dio/entity/sniper_rifle