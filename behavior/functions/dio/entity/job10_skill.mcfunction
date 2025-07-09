#death_timer...秒数
scoreboard players add @s death_timer 1
#
# 初期化
#
#ID=E_j10s
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @s add E_j10s
#高さ調整
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s ~~101~
#設置時効果音 audio/pitch
execute as @s[scores={death_timer=1}] at @s positioned ~~-100~ run playsound item.spyglass.use @a ~~~ 1.7 2
#設置時パーティクル
execute as @s[scores={death_timer=1}] at @s positioned ~~-100~ run particle minecraft:wind_charged_emitter ~~~
#起爆時間初期化
execute as @s[scores={death_timer=1}] at @s run scoreboard players set @s arg1 0
#
# 動作
#
#速度
execute as @s at @s run tp @s ^^^
#踏まれる前パーティクル
execute as @s as @s[tag=!E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ if entity @a[scores={job=10},r=4] run particle minecraft:falling_dust_scaffolding_particle ~~~
#踏まれた判定--E_j10s_steped(これに付く) -1.2~1.8 -1.8~1.2 => -1.2~1.2
execute as @s as @s[tag=!E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ as @e[family=!inanimate,type=!item,scores={job=!10},x=~-1.2,y=~-0.3,z=~-1.2,dx=2,dy=0,dz=2] if entity @s[x=~-1.8,y=~-0.7,z=~-1.8,dx=2,dy=0,dz=2] run tag @e[y=~100,c=1,r=5,tag=E_j10s] add E_j10s_steped
#踏み判定--E_j10s_step(踏んだ人に付く) -1.2~1.8 -1.8~1.2 => -1.2~1.2
execute as @s as @s[tag=E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ as @e[family=!inanimate,type=!item,scores={job=!10},c=1] run tag @s add E_j10s_step
#踏みエフェクト
#execute as @s as @s[tag=E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ run effect @e[c=1,tag=E_j10s_step] slowness 1 1
#踏まれたパーティクル
execute as @s as @s[tag=E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ run particle dio:flash_trap ~~~
#踏まれた効果音
execute as @s as @s[tag=E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ run playsound item.trident.throw @a ~~~ 1.7 2
#踏まれた際に生存時間リセット
execute as @s as @s[tag=E_j10s_steped,scores={arg1=0}] at @s positioned ~~-100~ run scoreboard players set @s death_timer 1
#秒数カウント--{arg1}(これに付く)
execute as @s as @s[tag=E_j10s_steped] at @s positioned ~~-100~ run scoreboard players add @s arg1 1
#起爆判定--E_j10s_bombed(これに付く)
execute as @s as @s[scores={arg1=5..}] at @s positioned ~~-100~ run tag @s add E_j10s_bombed
#被爆判定--E_j10s_bomb(人に付く)
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run tag @e[family=!inanimate,type=!item,r=3,scores={job=!10}] add E_j10s_bomb
#起爆時に踏み判定を消す
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run tag @e[c=1,tag=E_j10s_step] remove E_j10s_step
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run tag @s remove E_j10s_steped
#起爆時パーティクル
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run particle dio:flash_explode ~~~
#起爆時効果音 audio/pitch
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run playsound random.glass @a ~~~ 1.0 1.5
#起爆時消滅
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run scoreboard players set @s death_timer 1000000
#起爆時ダメージ*最後に持ってくること*
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run damage @e[tag=E_j10s_bomb,r=4] 1 magic entity @p[scores={job=10}]
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run camera @a[tag=E_j10s_bomb,r=4] fade time 0.1 2 3 color 255 255 200
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run scoreboard players add @a[scores={job=10}] ap 10 
#起爆時処理終了
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run tag @e[tag=E_j10s_bomb,r=8] remove E_j10s_bomb
execute as @s as @s[tag=E_j10s_bombed] at @s positioned ~~-100~ run tag @s remove E_j10s_bombed
#時間制限消滅
execute as @s[scores={death_timer=1601..}] at @s run kill @s