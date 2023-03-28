# These checks are required to be in this all function
# because the checks need to be completed on all boids before the movement can happen
# so that execution order doesn't matter (would cause directional behavior differences)
execute as @e[tag=boid_leader] run scoreboard players reset @s able_to_move_forward
execute as @e[tag=boid_leader] at @s positioned ^ ^ ^1 store success score @s able_to_move_forward if block ~ ~ ~ minecraft:air unless entity @e[tag=boid, distance=..0.5]

execute as @e[tag=boid_leader] run function map:boids/move_self_forward
