execute as @s run scoreboard players set @s able_to_move_forward 0
execute as @s at @s positioned ^ ^ ^1 store success score @s able_to_move_forward if block ~ ~ ~ minecraft:air unless entity @e[tag=boid, distance=..0.5]
