scoreboard players operation $i temp = u_norm temp
scoreboard players add $i temp 15
tag @s add this
execute at @s anchored eyes positioned ^ ^ ^.05 run function kickmania:physics/collision_raycast
tag @s remove this

