execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags: [boid, boid_leader], Invulnerable: true, Invisible: true, Silent: true, Attributes: [{Name: "generic.knockback_resistance", Base:1.0d}], Passengers: [{id: "minecraft:block_display", Tags: [boid, boid_rider], block_state: {Name: "minecraft:glass"}}]}
execute as @e[tag=boid_rider] run data modify entity @s transformation.translation set value [-0.5f, -1.48f, -0.5f]