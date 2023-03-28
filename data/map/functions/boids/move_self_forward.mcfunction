# Problem: this boid won't move forward if the boid in front is going to move forward in the same turn
# in this case they should move forward together
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air unless entity @e[tag=boid, distance=..0.5] run tp @s ~ ~ ~
