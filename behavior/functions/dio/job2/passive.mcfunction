execute as @a[scores={job=2},tag=t:jumping_always] at @s run effect @s slow_falling 1 0
execute as @a[scores={job=2},tag=!t:jumping_always] at @s run effect @s slow_falling 0 1
execute as @a[scores={job=2}] at @s unless block ~~-0.8~ air run effect @s slow_falling 0 1