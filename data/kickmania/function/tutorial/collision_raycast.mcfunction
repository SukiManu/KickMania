scoreboard players remove $i temp 1
#summon block_display ~ ~ ~ {block_state:{Name:"diamond_block"},Tags:["to_be_destroyed"],transformation:{scale:[0.1f,0.1f,0.1f],translation:[-0.05f,-0.05f,-0.05f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless block ~ ~ ~ #kickmania:pass_thru run return run function kickmania:tutorial/items/bazooka/hit
execute positioned ~-.03 ~-0.03 ~-0.03 as @e[dx=0,type=husk] positioned ~-.9 ~-.9 ~-.9 if entity @s[dx=0] positioned ~.9 ~.9 ~.9 as @n[type=block_display,tag=this] run return run function kickmania:tutorial/items/bazooka/hit
#execute positioned ~-.03 ~-0.03 ~-0.03 as @p[dx=0] positioned ~-.9 ~-.9 ~-.9 if entity @s[dx=0] positioned ~.9 ~.9 ~.9 as @n[type=block_display,tag=this] run return run function kickmania:tutorial/items/bazooka/hit
execute if score $i temp matches 0.. positioned ^ ^ ^.1 run function kickmania:tutorial/collision_raycast