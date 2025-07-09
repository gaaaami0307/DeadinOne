
#summon
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s unless entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run summon dio:target job8_skill
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s unless entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run playsound random.pop @s ~~~ 1 1
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s unless entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run particle minecraft:explosion_particle ~~~
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s unless entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run scoreboard players set @s recast 1
#tp
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run summon dio:target job8_skill_from
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run tp @s @e[type=dio:target,name=job8_skill,scores={death_timer=2..}]
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run tp @s ~~~ facing @e[type=dio:target,name=job8_skill_from]
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] unless entity @e[scores={job=!0},r=15,type=!arrow] run tp @s ~~~ facing @e[c=1,scores={job=!0},rm=15,type=!arrow]
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] run scoreboard players set @s ac1 60
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] as @s[scores={skilllevel=3..}] run scoreboard players add @s arrow 2
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] as @s[scores={skilllevel=1}] run scoreboard players set @s recast 30
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] as @s[scores={skilllevel=2..4}] run scoreboard players set @s recast 20
execute as @a[scores={job=8},tag=t:sneaking] as @s[scores={recast=..0}] at @s if entity @e[type=dio:target,name=job8_skill,scores={death_timer=2..}] as @s[scores={skilllevel=5..}] run scoreboard players set @s recast 15
execute if entity @e[type=dio:target,name=job8_skill_from,scores={death_timer=1..}] run tp @e[type=dio:target,name=job8_skill] -100 -60 -100
execute if entity @e[type=dio:target,name=job8_skill_from,scores={death_timer=5..}] run kill @e[type=dio:target,name=job8_skill]
execute if entity @e[type=dio:target,name=job8_skill_from,scores={death_timer=1..}] run tp @e[type=dio:target,name=job8_skill_from] -100 -60 -100
execute if entity @e[type=dio:target,name=job8_skill_from,scores={death_timer=5..}] run kill @e[type=dio:target,name=job8_skill_from]
