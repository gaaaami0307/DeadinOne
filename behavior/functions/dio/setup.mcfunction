scoreboard players set @a[tag=!setup] health 2
scoreboard players set @a[tag=!setup] arrow_damage 2
tag @a[tag=!setup] add resist_fall
tag @a[tag=!setup] add arrow_damage_2
tag @a[tag=!setup] add noname
tag @a[tag=!setup] add people
tag @a[tag=!setup] remove no_attack
tag @a[tag=!setup] add arrow_remove_on_hit_2
scoreboard objectives remove killCount
scoreboard objectives add killCount dummy キル数
scoreboard objectives setdisplay sidebar killCount
scoreboard players set @a[tag=!setup] killCount 0
scoreboard players set @a[tag=!setup] deathCount 0
scoreboard players set @a[tag=!setup] damageDealt 0
scoreboard players set @a[tag=!setup] damageDealtCount 0
scoreboard players set @a[tag=!setup] damageTakenCount 0
scoreboard players set @a[tag=!setup] damageTaken 0
scoreboard players set @a[tag=!setup] killstreak 0
scoreboard players set @a[tag=!setup] arrow 5
scoreboard players set @a[tag=!setup] reload 0
scoreboard players set @a[tag=!setup] reloadT 0
scoreboard players set @a[tag=!setup] minigunrecast 0
scoreboard players set @a[tag=!setup] recast 0
scoreboard players set @a[tag=!setup] ap 0
scoreboard players reset @a[tag=!setup] job
scoreboard players set @a[tag=!setup] skilllevel -1
scoreboard players set @a[tag=!setup] park 0
scoreboard players set @a[tag=!setup] weaponcooldown 0
scoreboard players set @a[tag=!setup] sub_reload_ammo 0
scoreboard players set @a[tag=!setup] park_cooldown 0
scoreboard players set @a[tag=!setup] arg1 0
scoreboard players set @a[tag=!setup] arg2 0
scoreboard players set @a[tag=!setup] arg3 0
tag @a[tag=!setup] remove kill
tag @a[tag=!setup] remove kill2
tag @a[tag=!setup] remove spawn2
tag @a[tag=!setup] remove shot2
tag @a[tag=!setup] remove death
tag @a[tag=!setup] remove death2
tag @a[tag=!setup] remove skill
tag @a[tag=!setup] remove powerskill
tag @a[tag=!setup] remove ultimate
tag @a[tag=!setup] remove battle
tag @a[tag=!setup] remove jobselect
tag @a[tag=!setup] remove ready
tag @a[tag=!setup] remove parkselect
tag @a[tag=!setup] remove parkready
tag @a[tag=!setup] remove kc15
tag @a[tag=!setup] remove kc20
tag @a[tag=!setup] remove kc25
tag @a[tag=!setup] remove kc30
effect @a[tag=!setup] clear
clear @a[tag=!setup]
kill @e[type=!player]
replaceitem entity @a[tag=!setup] slot.hotbar 8 barrier 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
scoreboard players random @a UUID 1 99999999
#end
tag @a[tag=!setup] add setup