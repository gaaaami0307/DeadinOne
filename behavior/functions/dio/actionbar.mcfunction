#アクションバーへのタイトル表示
scoreboard players add @a[scores={recast=1..}] recastT 1
scoreboard players remove @a[scores={recastT=20..}] recast 1
scoreboard players set @a[scores={recastT=20..}] recastT 0
execute as @a[scores={recast=1..}] as @s[scores={reload=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cAP§r: "},{"score":{"name":"@s","objective":"ap"}},{"text":"pt\n§9リキャスト§r: "},{"score":{"name":"@s","objective":"recast"}},{"text":"秒§r\n"},{"text":"§6リロード§r: "},{"score":{"name":"@s","objective":"reload"}}]}
execute as @a[scores={recast=1..}] as @s[scores={reload=..0}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cAP§r: "},{"score":{"name":"@s","objective":"ap"}},{"text":"pt\n§9リキャスト§r: "},{"score":{"name":"@s","objective":"recast"}},{"text":"秒§r"}]}
execute as @a[scores={recast=..0}] as @s[scores={reload=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cAP§r: "},{"score":{"name":"@s","objective":"ap"}},{"text":"pt\n§9リキャスト§r: §a準備完了"},{"text":"\n§6リロード§r: "},{"score":{"name":"@s","objective":"reload"}}]}
execute as @a[scores={recast=..0}] as @s[scores={reload=..0}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cAP§r: "},{"score":{"name":"@s","objective":"ap"}},{"text":"pt\n§9リキャスト§r: §a準備完了"}]}