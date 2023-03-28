# TODO: this doesn't actually work, probably because the movement of the birds is slower than the execution time of the functions.
# This individual check will prevent this boid from moving into a space if another boid has moved into the same space on the same turn because the space was open before.
execute as @s run function map:boids/check_space_in_front_is_open

execute at @s run tp @s ^ ^ ^1
