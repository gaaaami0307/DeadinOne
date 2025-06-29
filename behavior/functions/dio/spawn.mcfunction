#スポーン判定
effect @a[tag=spawned] resistance 2 200 true
spreadplayers 60 60 1 28  @a[tag=spawned,tag=battle]
scoreboard players set @a[tag=spawned] arrow 5
scoreboard players set @a[tag=spawned] reload 0
tag @a[tag=spawned] remove spawned