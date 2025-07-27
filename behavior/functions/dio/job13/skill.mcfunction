#job3
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=0}] at @s run scriptevent kb:dash 0.1 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=1}] if block ~~-0.1~ air at @s run scriptevent kb:dash 3 0.4
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=1}] unless block ~~-0.1~ air at @s run scriptevent kb:dash 3 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=1}] unless block ~~-0.1~ air at @s run effect @s speed 1 1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=1}] at @s run scoreboard players set @s ac1 5
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=2}] if block ~~-0.1~ air at @s run scriptevent kb:dash 4 0.7
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=2}] unless block ~~-0.1~ air at @s run scriptevent kb:dash 6 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=2}] unless block ~~-0.1~ air at @s run effect @s speed 1 3
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=2}] at @s run scoreboard players set @s ac1 10
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=3}] if block ~~-0.1~ air at @s run scriptevent kb:dash 5 1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=3}] unless block ~~-0.1~ air at @s run scriptevent kb:dash 10 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=3}] unless block ~~-0.1~ air at @s run effect @s speed 1 5
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=3}] at @s run scoreboard players set @s ac1 20
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=4}] if block ~~-0.1~ air at @s run scriptevent kb:dash 7 1.2
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=4}] unless block ~~-0.1~ air at @s run scriptevent kb:dash 15 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=4}] unless block ~~-0.1~ air at @s run effect @s speed 1 7
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=4}] at @s run scoreboard players set @s ac1 30
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=5}] if block ~~-0.1~ air at @s run scriptevent kb:dash 10 1.5
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=5}] unless block ~~-0.1~ air at @s run scriptevent kb:dash 25 0.1
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=5}] unless block ~~-0.1~ air at @s run effect @s speed 2 9
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] as @s[scores={skilllevel=5}] at @s run scoreboard players set @s ac1 40
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s arg1 0
execute as @a[scores={job=13},tag=t:sneaking] as @s[scores={recast=..0}] at @s run scoreboard players set @s recast 15
execute as @a[scores={job=13}] as @s[scores={ac1=1..}] at @s positioned ^^^0.2 run particle rouge:thunder_bomb ~~1.5~
execute as @a[scores={job=13}] as @s[scores={ac1=1..}] at @s positioned ^^^0.2 run playsound firework.launch @a ~~~ 1 1.3
execute as @a[scores={job=13}] as @s[scores={ac1=11..}] at @s positioned ^^^1 run playsound firework.launch @a ~~~ 1 1.4
execute as @a[scores={job=13}] as @s[scores={ac1=11..}] at @s positioned ^^^1 run particle rouge:thunder_bomb ~~1.5~
execute as @a[scores={job=13}] as @s[scores={ac1=21..}] at @s positioned ^^^2 run playsound firework.launch @a ~~~ 1 1.5
execute as @a[scores={job=13}] as @s[scores={ac1=21..}] at @s positioned ^^^2 run playsound firework.blast @a ~~~ 1 1.5
execute as @a[scores={job=13}] as @s[scores={ac1=21..}] at @s positioned ^^^2 run particle rouge:thunder_bomb ~~1.5~
execute as @a[scores={job=13}] as @s[scores={ac1=31..}] at @s positioned ^^^3 run playsound firework.large_blast @a ~~~ 1 1.7
execute as @a[scores={job=13}] as @s[scores={ac1=31..}] at @s positioned ^^^3 run particle rouge:thunder_bomb ~~1.5~
execute as @a[scores={job=13}] as @s[scores={ac1=21..}] at @s positioned ^^^ run damage @e[rm=0.1,r=1] 4 lightning entity @s
execute as @a[scores={job=13}] as @s[scores={ac1=21..}] at @s positioned ^^^0.2 run damage @e[rm=0.3,r=1] 4 lightning entity @s
execute as @a[scores={job=13}] as @s[scores={ac1=1..}] at @s positioned ^^^ run damage @e[rm=0.1,r=0.8] 4 lightning entity @s
execute as @a[scores={job=13}] as @s[scores={ac1=1..}] at @s positioned ^^^ run scoreboard players set @e[rm=0.1,r=2,scores={job=!-12}] e_sparking 100