execute as @a[tag=battle,scores={job=5}] at @s run effect @s slowness 0 200 true
execute as @a[tag=battle,scores={job=5}] at @s if block ~~-0.1~ minecraft:blue_ice run effect @s speed 1 2
execute as @a[tag=battle,scores={job=5}] at @s if block ~~-0.1~ minecraft:ice run effect @s speed 1 2
execute as @a[tag=battle,scores={job=5}] at @s if block ~~-0.1~ minecraft:packed_ice run effect @s speed 1 2