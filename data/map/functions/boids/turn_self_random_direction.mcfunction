scoreboard players reset @s turn_choice
execute store success score @s turn_choice if predicate map:random_50

execute at @s if score @s turn_choice matches 0 run function map:boids/turn_self_left
execute at @s if score @s turn_choice matches 1 run function map:boids/turn_self_right
