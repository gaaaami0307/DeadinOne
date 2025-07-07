#選択終了

execute if entity @a[tag=ready] unless entity @a[tag=jobselect] run scoreboard players set @a[tag=ready] parkcountdown 40
execute if entity @a[tag=ready] unless entity @a[tag=jobselect] run tag @a[tag=ready] remove ready
execute if entity @a[tag=parkready] unless entity @a[tag=parkselect] run scoreboard players set @a[tag=parkready] countdown 100
execute if entity @a[tag=parkready] unless entity @a[tag=parkselect] run tag @a[tag=parkready] remove parkready