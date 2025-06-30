#選択終了
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] run scoreboard players set @a[tag=ready] countdown 100
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] run tag @a[tag=ready] remove ready