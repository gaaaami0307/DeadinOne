execute as @a[scores={killCount=15..},tag=!kc15] at @s run me が§a15キル§r達成！
execute as @a[scores={killCount=15..},tag=!kc15] at @s run execute as @a at @s run playsound note.bit @s ~~~ 1 1
execute as @a[scores={killCount=15..},tag=!kc15] at @s run tag @s add kc15
execute as @a[scores={killCount=20..},tag=!kc20] at @s run me が§b20キル§r達成！
execute as @a[scores={killCount=20..},tag=!kc20] at @s run execute as @a at @s run playsound note.bit @s ~~~ 1 1
execute as @a[scores={killCount=20..},tag=!kc20] at @s run tag @s add kc20
execute as @a[scores={killCount=25..},tag=!kc25] at @s run me が§c25キル§r達成！
execute as @a[scores={killCount=25..},tag=!kc25] at @s run execute as @a at @s run playsound note.bit @s ~~~ 1 1
execute as @a[scores={killCount=25..},tag=!kc25] at @s run tag @s add kc25
execute as @a[scores={killCount=30..},tag=!kc30] at @s run me が§630キル§r達成！！
#高さ制限
execute as @a[x=0,y=0,z=0,dx=120,dy=2,dz=120,tag=battle] at @s run tp ~~-1~
execute as @e[x=0,y=4,z=0,dx=120,dy=2,dz=120] at @s run kill @s
execute as @a[scores={killCount=30..},tag=!kc30] at @s run scoreboard players add @a[tag=battle] gameending 100
execute as @a[scores={killCount=30..},tag=!kc30] at @s run clear @a[tag=battle]
execute as @a[scores={killCount=30..},tag=!kc30] at @s run tag @s add kc30
