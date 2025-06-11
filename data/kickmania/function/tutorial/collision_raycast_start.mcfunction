scoreboard players operation $i temp = $u_norm temp
scoreboard players operation $i temp /= $10 const
tag @s add this
execute at @s anchored eyes positioned ^ ^ ^.05 run function kickmania:tutorial/collision_raycast
tag @s remove this