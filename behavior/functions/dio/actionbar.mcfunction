#アクションバーへのタイトル表示
scoreboard players add @a[scores={recast=1..}] recastT 1
scoreboard players remove @a[scores={recastT=20..}] recast 1
scoreboard players set @a[scores={recastT=20..}] recastT 0
execute as @a[scores={recast=1..}] as @a[scores={reload=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"リキャスト: "},{"score":{"name":"@p","objective":"recast"}},{"text":" "},{"text":"リロード: "},{"score":{"name":"@p","objective":"reload"}}]}
execute as @a[scores={recast=1..}] as @a[scores={reload=..0}] at @s run titleraw @s actionbar {"rawtext":[{"text":"リキャスト: "},{"score":{"name":"@p","objective":"recast"}},{"text":" "},{"text":"リロード: "},{"score":{"name":"@p","objective":"reload"}}]}
execute as @a[scores={recast=..0}] as @a[scores={reload=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"リキャスト: §a準備完了"},{"text":"リロード: "},{"score":{"name":"@p","objective":"reload"}}]}
execute as @a[scores={recast=..0}] as @a[scores={reload=..0}] at @s run titleraw @s actionbar {"rawtext":[{"text":"リキャスト: §a準備完了"}]}