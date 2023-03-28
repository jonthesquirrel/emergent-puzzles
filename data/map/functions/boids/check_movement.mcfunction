# Reset able to true

execute as @s run scoreboard players set @s able_to_move_forward 1

# If the desired movement spot is blocked by boids, blocks, or another boid's movement intent marker, set able to false

execute as @s at @s positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:air run scoreboard players set @s able_to_move_forward 0

execute as @s at @s positioned ^ ^ ^1 if entity @e[tag=boid, distance=..0.5] run scoreboard players set @s able_to_move_forward 0

# If able, create movement intent marker

execute as @s at @s positioned ^ ^ ^1 if score @s able_to_move_forward matches 1 run function map:boids/create_movement_intent_marker
