# This group check completes before any boid moves so that boids will never move into a spot which is filled.
# If the checks were only run individually, then some boids would move into a space another boid is moving from, but based on execution order, which feels inconsistent or directional.
execute as @e[tag=boid_leader] run function map:boids/check_space_in_front_is_open

execute as @e[tag=boid_leader] if score @s able_to_move_forward matches 1 run function map:boids/move_self_forward
execute as @e[tag=boid_leader] if score @s able_to_move_forward matches 0 run function map:boids/turn_self_random_direction

execute as @e[tag=boid_leader] run scoreboard players reset @s able_to_move_forward
