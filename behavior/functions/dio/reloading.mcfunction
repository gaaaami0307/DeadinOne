#リロード中
scoreboard players remove @a[scores={reload=1..}] reload 1
title @a[scores={reload=60}] title リロード中
title @a[scores={reload=49}] title リロード中.
title @a[scores={reload=34}] title リロード中..
title @a[scores={reload=19}] title リロード中...
title @a[scores={reload=4}] title リロード中...!
title @a[scores={reload=1}] ""
execute as @a[scores={reload=1}] at @s run playsound crossbow.loading.end @a ~~~ 1 1
execute as @a[scores={reload=60}] at @s run playsound crossbow.loading.start @a ~~~ 1 1
scoreboard players set @a[scores={reload=1}] arrow 5