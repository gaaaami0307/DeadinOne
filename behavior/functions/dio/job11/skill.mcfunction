#job3
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players random @s ac1 1 100 
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] at @s run tellraw @a {"rawtext":[{"text":"§aダイスロール§r=>§a "},{"score":{"name":"@p","objective":"ac1"}}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] at @s run playsound random.levelup @s ~~~ 1 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..95}] at @s run tellraw @a {"rawtext":[{"text":"§aダイスロール§r=> "},{"score":{"name":"@p","objective":"ac1"}}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..95}] at @s run playsound random.orb @s ~~~ 1 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] at @s run tellraw @a {"rawtext":[{"text":"§aダイスロール§r=>§c "},{"score":{"name":"@p","objective":"ac1"}}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] at @s run playsound horn.call.3 @s ~~~ 1 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] as @s[scores={skilllevel=1}] at @s run effect @s resistance 5 10 
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] as @s[scores={skilllevel=2}] at @s run effect @s resistance 10 10
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] as @s[scores={skilllevel=3}] at @s run effect @s resistance 15 10
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=1..5}] at @s run tellraw @s {"rawtext":[{"text":"§6無敵！！！！"}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..25}] as @s[scores={skilllevel=1}] at @s run effect @s invisibility 10 0
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..25}] as @s[scores={skilllevel=2}] at @s run effect @s invisibility 20 0
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..25}] as @s[scores={skilllevel=3}] at @s run effect @s invisibility 30 0
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=6..25}] at @s run tellraw @s {"rawtext":[{"text":"§b透明化！！！"}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=26..50}] as @s[scores={skilllevel=1}] at @s run effect @s speed 30 0
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=26..50}] as @s[scores={skilllevel=2}] at @s run effect @s speed 30 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=26..50}] as @s[scores={skilllevel=3}] at @s run effect @s speed 30 2
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=26..50}] at @s run tellraw @s {"rawtext":[{"text":"§cスピードアップ！！"}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=51..75}] as @s[scores={skilllevel=1}] at @s run scoreboard players add @s ap 10
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=51..75}] as @s[scores={skilllevel=2}] at @s run scoreboard players add @s ap 20
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=51..75}] as @s[scores={skilllevel=3}] at @s run scoreboard players add @s ap 30
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=51..75}] at @s run tellraw @s {"rawtext":[{"text":"§aap獲得！"}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=76..95}] as @s[scores={skilllevel=1}] at @s run effect @s slowness 30 0
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=76..95}] as @s[scores={skilllevel=2}] at @s run effect @s slowness 30 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=76..95}] as @s[scores={skilllevel=3}] at @s run effect @s slowness 30 2
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=76..95}] at @s run tellraw @s {"rawtext":[{"text":"§8鈍化..."}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=1}] at @s run scoreboard players set @s skilllevel 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=2}] at @s run scoreboard players set @s skilllevel 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=3}] at @s run scoreboard players set @s skilllevel 1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=1}] at @s run summon minecraft:lightning_bolt
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=2}] at @s run summon minecraft:lightning_bolt
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] as @s[scores={skilllevel=3}] at @s run summon minecraft:lightning_bolt
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={ac1=96..100}] at @s run tellraw @s {"rawtext":[{"text":"§4スキルレベルリセット....."}]}
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players reset @s ac1
execute as @a[scores={job=11},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 30