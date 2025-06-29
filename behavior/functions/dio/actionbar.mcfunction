#アクションバーへのタイトル表示
scoreboard players remove @a[scores={recast=1..}] recast 1
execute as @a[scores={recast=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"リキャスト:  "},{"score":{"name":"@p","objective":"recast"}},{"text":" 秒 "}]}
titleraw @a[scores={recast=..0}] actionbar {"rawtext":[{"text":"リキャスト: §a準備完了 "}]}