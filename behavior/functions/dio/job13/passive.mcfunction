execute as @a[scores={job=13}] as @s[scores={count_stop=5..}] as @s[scores={arg1=..302}] at @s run scoreboard players add @s arg1 1
execute as @a[scores={job=13}] as @s[scores={count_move=200..}] as @s[scores={arg1=10..}] at @s run scoreboard players remove @s arg1 10
execute as @a[scores={job=13}] as @s[scores={count_move=200..}] as @s[scores={arg1=10..}] at @s run particle rouge:thunder_bomb ~~1~
execute as @a[scores={job=13}] as @s[scores={count_move=200..}] as @s[scores={arg1=10..}] at @s run playsound firework.blast @a ~~~ 1 1
execute as @a[scores={job=13}] as @s[scores={count_stop=5..}] as @s[scores={arg1=..302}] at @s run particle rouge:thunder ~~1~
execute as @a[scores={job=13}] as @s[scores={arg1=0..59}] at @s run scoreboard players set @s skilllevel 0
execute as @a[scores={job=13}] as @s[scores={arg1=60..119}] at @s run scoreboard players set @s skilllevel 1
execute as @a[scores={job=13}] as @s[scores={arg1=60}] as @s[scores={count_stop=5..}] at @s run playsound note.pling @s ~~~ 1 1
execute as @a[scores={job=13}] as @s[scores={arg1=120..179}] at @s run scoreboard players set @s skilllevel 2
execute as @a[scores={job=13}] as @s[scores={arg1=120}] as @s[scores={count_stop=5..}] at @s run playsound note.pling @s ~~~ 1 1.2
execute as @a[scores={job=13}] as @s[scores={arg1=180..249}] at @s run scoreboard players set @s skilllevel 3
execute as @a[scores={job=13}] as @s[scores={arg1=180}] as @s[scores={count_stop=5..}] at @s run playsound note.pling @s ~~~ 1 1.4
execute as @a[scores={job=13}] as @s[scores={arg1=240..299}] at @s run scoreboard players set @s skilllevel 4
execute as @a[scores={job=13}] as @s[scores={arg1=240}] as @s[scores={count_stop=5..}] at @s run playsound note.pling @s ~~~ 1 1.6
execute as @a[scores={job=13}] as @s[scores={arg1=300..}] at @s run scoreboard players set @s skilllevel 5
execute as @a[scores={job=13}] as @s[scores={arg1=300}] as @s[scores={count_stop=5..}] at @s run playsound ambient.weather.lightning.impact @s ~~~ 1 1.2
execute as @a[scores={job=13}] as @s[scores={arg1=300}] as @s[scores={count_stop=5..}] at @s run playsound ambient.weather.thunder @s ~~~ 1 1.0
execute as @a[scores={job=13}] as @s[scores={arg1=300}] as @s[scores={count_stop=5..}] at @s run particle rouge:thunder_bomb ~~1~
execute as @a[scores={job=13}] as @s[scores={arg1=300..}] at @s run effect @s speed 1 0 true
execute as @a[scores={job=13}] as @s[scores={arg1=300..}] at @s run particle rouge:thunder ~~0~