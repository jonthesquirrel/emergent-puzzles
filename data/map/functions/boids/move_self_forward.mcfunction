# Problem: this boid won't move forward if the boid in front is going to move forward in the same turn
# in this case they should move forward together
# Actually: whether this boid moves depends on the execution order, which depends on the direction
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air unless entity @e[tag=boid, distance=..0.5] run tp @s ~ ~ ~
